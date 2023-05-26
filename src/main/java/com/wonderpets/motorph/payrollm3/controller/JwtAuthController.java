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

    public JwtAuthController(JwtAuthService tokenService) {
        this.tokenService = tokenService;
    }

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
