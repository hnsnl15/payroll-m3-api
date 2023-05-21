package com.wonderpets.motorph.payrollm3.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class JwtAuthControllerTest {

    private final LoginForm loginForm = new LoginForm("admin", "123");
    @Autowired
    private MockMvc mockMvc;

    private ResultActions mockPostOption(String urlTemplate, LoginForm userDetails) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(userDetails);
        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .content(requestBody)
                .contentType(MediaType.APPLICATION_JSON)
        );
    }

    @Test
    void shouldExpectStatusOk() throws Exception {
        mockPostOption("/api/auth-token", loginForm).andExpect(status().isOk());
    }

}
