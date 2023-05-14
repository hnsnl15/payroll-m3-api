package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.service.EmployeeService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpHeaders;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
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

    private ResultActions mockOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.get(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        );
    }

    @Test
    public void testRetrieveAllEmployee() throws Exception {
        mockOption("/api/v1/employees").andExpect(status().isOk());
    }

    @Test
    public void testRetrieveEmployee() throws Exception {
        var result = mockOption("/api/v1/employees/1");
        Assertions.assertEquals("null", result.andReturn().getResponse().getContentAsString(), "Result returns null");
        result.andExpect(status().isOk());
    }


}
