package com.wonderpets.motorph.payrollm3.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Employees;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Optional;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class EmployeesControllerTest {

    private final Employees employee = new Employees(
            "Doe",
            "John",
            "password",
            "1988-01-01",
            "123 Main St",
            "555-1234",
            "123-45-6789",
            "987654321",
            "123-456-789",
            "67890",
            "active",
            "manager",
            "Jane Smith",
            50000.0,
            2000.0,
            1000.0,
            500.0,
            10000.0,
            25.0
    );
    @Value("${jwt.admin.username}")
    private String adminUsername;
    @Value("${jwt.admin.password}")
    private String adminPassword;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private EmployeeJpaRepository employeeJpaRepository;
    @Autowired
    private JwtAuthController jwtAuthController;
    @Autowired
    private MockMvc mockMvc;


    private String generateBasicAuthHeader() {
        String credentials = adminUsername + ":" + adminPassword;
        byte[] credentialsBytes = credentials.getBytes(StandardCharsets.UTF_8);
        String base64Credentials = Base64.getEncoder().encodeToString(credentialsBytes);
        return "Basic " + base64Credentials;
    }

    private String generateJwtAuthHeader() {
        LoginForm loginForm = new LoginForm(adminUsername, adminPassword);
        return "Bearer " + jwtAuthController.auth(loginForm).token();
    }

    private void clearUserTable() {
        String username = "johndoe";
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        if (userDetails != null) {
            JdbcUserDetailsManager jdbcUserDetailsManager = (JdbcUserDetailsManager) userDetailsService;
            jdbcUserDetailsManager.deleteUser(username);
        }
    }

    private Optional<Employees> getTestEmployee() {
        return employeeJpaRepository.findByUsername("johndoe");
    }

    private ResultActions mockGetOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.get(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
        );
    }

    private ResultActions mockPostOption(String urlTemplate, Employees employee) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(employee);

        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
                .content(requestBody)
                .contentType(MediaType.APPLICATION_JSON)
        );
    }

    private ResultActions mockPutOption(String urlTemplate, Employees employee) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(employee);

        return mockMvc.perform(MockMvcRequestBuilders.put(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
                .content(requestBody)
                .contentType(MediaType.APPLICATION_JSON)
        );
    }

    private ResultActions mockDeleteOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.delete(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
        );
    }

    @BeforeEach()
    public void createData() {
        this.employeeJpaRepository.save(employee);
    }

    @AfterEach
    public void clearDataPerTest() {
        if (getTestEmployee().isPresent()) employeeJpaRepository.deleteById(getTestEmployee().get().getEmployeeId());
    }

    @Test
    public void testRetrieveAllEmployee() throws Exception {
        mockGetOption("/api/v1/employees").andExpect(status().isOk());
        clearUserTable();
    }

    @Test
    public void testRetrieveEmployeesByPagination() throws Exception {
        mockGetOption("/api/v2/employees").andExpect(status().isOk());
    }

    @Test
    public void testRetrieveEmployeeById() throws Exception {
        mockGetOption("/api/v1/employees/" + getTestEmployee().get().getEmployeeId()).andExpect(status().isOk());
        mockGetOption("/api/v1/employees/12345").andExpect(status().isNotFound());
    }

    @Test
    public void testDeleteEmployeeById() throws Exception {
        mockDeleteOption("/api/v1/employees/" + getTestEmployee().get().getEmployeeId()).andExpect(status().isOk());
        mockDeleteOption("/api/v1/employees/123456").andExpect(status().isNotFound());
        mockDeleteOption("/api/v1/employees/gfsdgdfgdf").andExpect(status().isBadRequest());
    }

    @Test
    void createEmployee_WhenUsernameIsAvailable_ShouldReturnCreated() throws Exception {
        clearDataPerTest();
        mockPostOption("/api/v1/create-employee", employee).andExpect(status().isCreated());
        clearUserTable();
    }

    @Test
    void createEmployee_WhenUsernameIsNotAvailable_ShouldReturnBadRequest() throws Exception {
        mockPostOption("/api/v1/create-employee", employee).andExpect(status().isBadRequest());
    }

    @Test
    void createEmployee_WithPasswordLessThan_Char() throws Exception {
        employee.setPassword("123");
        mockPostOption("/api/v1/create-employee", employee).andExpect(status().isBadRequest());
    }

    @Test
    void updateEmployee_WhenIdIsAvailable() throws Exception {
        mockPutOption("/api/v1/employees/" + getTestEmployee().get().getEmployeeId(), employee).andExpect(status().isOk());
    }

    @Test
    void updateEmployee_WhenIdIsNotAvailable_ShouldReturnBadRequest() throws Exception {
        clearDataPerTest();
        mockPutOption("/api/v1/employees/" + 1, employee)
                .andExpect(status().isNotFound());
    }


}
