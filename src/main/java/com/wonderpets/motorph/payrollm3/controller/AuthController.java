package com.wonderpets.motorph.payrollm3.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class AuthController {

    @GetMapping("/v1/auth/login")
    public String authLogin() {
        return "Login";
    }

    @GetMapping("/v1/auth/create-account")
    public String authCreateAccount() {
        return "Created";
    }


}
