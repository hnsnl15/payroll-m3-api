package com.wonderpets.motorph.payrollm3.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class AuthControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void testLogin() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/api/v1/auth/login"))
                .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    void testCreateAccount() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/api/v1/auth/create-account"))
                .andExpect(MockMvcResultMatchers.status().isOk());
    }


}
