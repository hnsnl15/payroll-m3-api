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

    private ResultActions mockGetOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.get(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        );
    }

    private ResultActions mockPostOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        );
    }

    private ResultActions mockDeleteOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.delete(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateBasicAuthHeader("admin", "123"))
        );
    }

    @Test
    public void testRetrieveAllEmployee() throws Exception {
        mockGetOption("/api/v1/employees").andExpect(status().isOk());
    }

    @Test
    public void testRetrieveEmployeeById() throws Exception {
        var result = mockGetOption("/api/v1/employees/1");
        Assertions.assertEquals("null", result.andReturn().getResponse().getContentAsString(), "Result returns null");
        result.andExpect(status().isOk());
    }

    @Test
    public void testDeleteEmployeeById() throws Exception {
        mockDeleteOption("/api/v1/employees/0").andExpect(status().isOk());
        mockDeleteOption("/api/v1/employees/gfsdgdfgdf").andExpect(status().isBadRequest());
    }


}
