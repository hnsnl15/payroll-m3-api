package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.model.LoginForm;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.JwtClaimsSet;
import org.springframework.security.oauth2.jwt.JwtEncoder;
import org.springframework.security.oauth2.jwt.JwtEncoderParameters;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.time.Instant;
import java.util.stream.Collectors;

@Service
public class JwtAuthService {

    private final JwtEncoder jwtEncoder;
    private final DataSource dataSource;
    private final PasswordEncoder passwordEncoder;

    public JwtAuthService(JwtEncoder jwtEncoder, DataSource dataSource, PasswordEncoder passwordEncoder) {
        this.jwtEncoder = jwtEncoder;
        this.dataSource = dataSource;
        this.passwordEncoder = passwordEncoder;
    }

    public boolean authenticate(LoginForm loginForm) {
        JdbcUserDetailsManager jdbcUserDetailsManager = new JdbcUserDetailsManager(dataSource);
        UserDetails userDetails = jdbcUserDetailsManager.loadUserByUsername(loginForm.getUsername());
        return userDetails != null && passwordEncoder.matches(loginForm.getPassword(), userDetails.getPassword());
    }

    public String createToken(Authentication authentication) {
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

    public String createScope(Authentication authentication) {
        return authentication.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.joining(" "));
    }

    public record JwtResponse(String token) {
    }

}
