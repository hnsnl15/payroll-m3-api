package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.service.EmployeeService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpHeaders;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class EmployeeControllerTest {

    @MockBean
    private EmployeeService employeeService;
    @Autowired
    private MockMvc mockMvc;

    public static String generateBasicAuthHeader(String username, String password) {
        String credentials = username + ":" + password;
        byte[] credentialsBytes = credentials.getBytes(StandardCharsets.UTF_8);
        String base64Credentials = Base64.getEncoder().encodeToString(credentialsBytes);
        return "Basic " + base64Credentials;
    }

    @Test
    public void testRetrieveAllEmployee() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/api/v1/employees")
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        ).andExpect(status().isOk());
    }

    @Test
    public void testRetrieveEmployee() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/api/v1/employees/1")
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        ).andExpect(status().isOk());
    }


}
