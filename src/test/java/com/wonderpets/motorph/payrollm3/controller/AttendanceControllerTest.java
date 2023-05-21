package com.wonderpets.motorph.payrollm3.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wonderpets.motorph.payrollm3.jpa.AttendanceJpaRepository;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.model.Employees;
import com.wonderpets.motorph.payrollm3.model.LoginForm;
import com.wonderpets.motorph.payrollm3.model.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import javax.sql.DataSource;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.Optional;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class AttendanceControllerTest {

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

    private final Attendance attendance = new Attendance(
            "2023-05-17", "09:00", "17:00", false, false, employee);


    @Value("${jwt.admin.username}")
    private String adminUsername;
    @Value("${jwt.admin.password}")
    private String adminPassword;
    @Autowired
    private MockMvc mockMvc;
    @Autowired
    private JwtAuthController jwtAuthController;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private DataSource dataSource;
    @Autowired
    private EmployeeJpaRepository employeeJpaRepository;
    @Autowired
    private AttendanceJpaRepository attendanceJpaRepository;

    private void clearUserTable() {
        String username = "johndoe";
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        if (userDetails != null) {
            JdbcUserDetailsManager jdbcUserDetailsManager = (JdbcUserDetailsManager) userDetailsService;
            jdbcUserDetailsManager.deleteUser(username);
        }
    }

    private void deleteAttendance() {
        if (getTestAttendance().isPresent()) attendanceJpaRepository.deleteById(getTestAttendance().get().getId());
    }

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

    private Optional<Attendance> getTestAttendance() {
        return this.attendanceJpaRepository.findByName("John Doe");
    }

    private ResultActions mockGetOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.get(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
        );
    }

    private ResultActions mockPostOption(String urlTemplate, Attendance attendance) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(attendance);

        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestBody)
        );
    }

    private ResultActions mockPutOption(String urlTemplate, Attendance attendance) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(attendance);

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

    public void userDetailsService(String username, String password) {
        var jdbcUserDetailsManager = new JdbcUserDetailsManager(dataSource);
        if (!jdbcUserDetailsManager.userExists(username)) {
            User user = (User) User.withUsername(username)
                    .password(password)
                    .passwordEncoder(passwordEncoder::encode)
                    .roles(Role.USER.toString())
                    .build();
            jdbcUserDetailsManager.createUser(user);
        }
    }

    @BeforeEach()
    public void createData() {
        Employees createdEmployee = this.employeeJpaRepository.save(employee);
        userDetailsService(createdEmployee.getUsername(), createdEmployee.getPassword());
        this.attendanceJpaRepository.save(attendance);
    }

    @AfterEach
    public void clearDataPerTest() {
        deleteAttendance();
        clearUserTable();
    }

    @Test
    public void shouldRetrieveAllAttendance() throws Exception {
        mockGetOption("/api/v1/attendances").andExpect(status().isOk());
    }

    @Test
    public void shouldRetrieveAttendancesById() throws Exception {
        mockGetOption("/api/v1/attendances/" + getTestAttendance().get().getId()).andExpect(status().isOk());
    }

    @Test
    public void shouldRetrieveAttendancesByPagination() throws Exception {
        mockGetOption("/api/v2/attendances").andExpect(status().isOk());
        mockGetOption("/api/v3/attendances?id=" + getTestAttendance().get().getId()).andExpect(status().isOk());
    }

    @Test
    void shouldCreateAttendanceWhenDateIsValidAndReturnOk() throws Exception {
        deleteAttendance();
        mockPostOption("/api/v1/create-attendance", attendance).andExpect(status().isCreated());
    }

    @Test
    void shouldNotCreateAttendanceWhenDateIsInTheFutureAndReturnBadRequest() throws Exception {
        deleteAttendance();
        attendance.setDate(LocalDate.now().plusDays(1).format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        mockPostOption("/api/v1/create-attendance", attendance).andExpect(status().isBadRequest());
    }

}
