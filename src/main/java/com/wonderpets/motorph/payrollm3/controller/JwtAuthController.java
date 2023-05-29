package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.exception.InvalidUsernameOrPassword;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import com.wonderpets.motorph.payrollm3.service.JwtAuthService;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JwtAuthController {

    private final JwtAuthService tokenService;

    /**
     * Constructs a new JwtAuthController with the specified token service.
     *
     * @param tokenService the JwtAuthService used for token operations
     */
    public JwtAuthController(JwtAuthService tokenService) {
        this.tokenService = tokenService;
    }

    /**
     * Authenticates a user by processing the login form.
     *
     * @param loginForm the LoginForm containing the username and password
     * @return the JwtResponse containing the generated token
     * @throws InvalidUsernameOrPassword if the username or password is invalid
     */
    @PostMapping("/api/auth-token")
    public JwtAuthService.JwtResponse auth(@RequestBody LoginForm loginForm) {
        if (!this.tokenService.authenticate(loginForm)) {
            throw new InvalidUsernameOrPassword("Invalid username or password");
        }
        Authentication authentication = new UsernamePasswordAuthenticationToken(loginForm.getUsername(),
                loginForm.getPassword());
        return new JwtAuthService.JwtResponse(this.tokenService.createToken(authentication));
    }

}
