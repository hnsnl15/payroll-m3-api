package com.wonderpets.motorph.payrollm3.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static com.wonderpets.motorph.payrollm3.controller.EmployeeControllerTest.generateBasicAuthHeader;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class AuthControllerTest {

    private final LoginForm loginForm = new LoginForm("admin", "123");
    @Autowired
    private MockMvc mockMvc;

    private ResultActions mockPostOption(String urlTemplate, LoginForm userDetails) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(userDetails);
        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
                .content(requestBody)
                .contentType(MediaType.APPLICATION_JSON)
        );
    }

    @Test
    void testLogin() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/api/v1/auth/login"))
                .andExpect(status().isOk());
    }

    @Test
    void testCreateAccount() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/api/v1/auth/create-account"))
                .andExpect(status().isOk());
    }

    @Test
    void testGetAuthToken() throws Exception {
        mockPostOption("/auth-token", loginForm).andExpect(status().isOk());
    }

}
