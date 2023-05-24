package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.exception.InvalidUsernameOrPassword;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.JwtClaimsSet;
import org.springframework.security.oauth2.jwt.JwtEncoder;
import org.springframework.security.oauth2.jwt.JwtEncoderParameters;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.time.Instant;
import java.util.stream.Collectors;

@RestController
public class JwtAuthController {

    private final JwtEncoder jwtEncoder;
    private final DataSource dataSource;
    private final PasswordEncoder passwordEncoder;

    public JwtAuthController(JwtEncoder jwtEncoder, DataSource dataSource, PasswordEncoder passwordEncoder) {
        this.jwtEncoder = jwtEncoder;
        this.dataSource = dataSource;
        this.passwordEncoder = passwordEncoder;
    }

    @PostMapping("/api/auth-token")
    public JwtResponse auth(@RequestBody LoginForm loginForm) {
        if (!authenticate(loginForm)) {
            throw new InvalidUsernameOrPassword("Invalid username or password");
        }
        Authentication authentication = new UsernamePasswordAuthenticationToken(loginForm.getUsername(),
                loginForm.getPassword());
        return new JwtResponse(createToken(authentication));
    }

    private boolean authenticate(LoginForm loginForm) {
        JdbcUserDetailsManager jdbcUserDetailsManager = new JdbcUserDetailsManager(dataSource);
        UserDetails userDetails = jdbcUserDetailsManager.loadUserByUsername(loginForm.getUsername());
        return userDetails != null && passwordEncoder.matches(loginForm.getPassword(), userDetails.getPassword());
    }

    private String createToken(Authentication authentication) {
        var claims = JwtClaimsSet.builder()
                .issuer("self")
                .issuedAt(Instant.now())
                .expiresAt(Instant.now().plusSeconds(60 * 60 * 24 * 7))
                .subject(authentication.getName())
                .claim("scope", createScope(authentication))
                .build();
        return jwtEncoder.encode(JwtEncoderParameters.from(claims))
                .getTokenValue();
    }

    private String createScope(Authentication authentication) {
        return authentication.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.joining(" "));
    }

    public record JwtResponse(String token) {
    }


}
