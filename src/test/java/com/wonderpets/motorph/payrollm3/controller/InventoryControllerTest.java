package com.wonderpets.motorph.payrollm3.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wonderpets.motorph.payrollm3.jpa.InventoryJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Inventory;
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
import org.springframework.security.core.userdetails.UserDetailsService;
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
public class InventoryControllerTest {

    private final Inventory stock1 = new Inventory("2023-01-01", "NEW", "Mitsubishi", "FGRTERTY768", "On-hand");
    @Value("${jwt.admin.username}")
    private String adminUsername;
    @Value("${jwt.admin.password}")
    private String adminPassword;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private MockMvc mockMvc;
    @Autowired
    private JwtAuthController jwtAuthController;
    @Autowired
    private InventoryJpaRepository inventoryJpaRepository;


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

    private Optional<Inventory> getTestStock() {
        return inventoryJpaRepository.findByEngineNumber(stock1.getEngineNumber());
    }

    private ResultActions mockGetOption(String urlTemplate) throws Exception {
        return mockMvc.perform(MockMvcRequestBuilders.get(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
        );
    }

    private ResultActions mockPostOption(String urlTemplate, Inventory inventory) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(inventory);

        return mockMvc.perform(MockMvcRequestBuilders.post(urlTemplate)
                .header(HttpHeaders.AUTHORIZATION, generateJwtAuthHeader())
                .content(requestBody)
                .contentType(MediaType.APPLICATION_JSON)
        );
    }

    private ResultActions mockPutOption(String urlTemplate, Inventory inventory) throws Exception {
        String requestBody = new ObjectMapper().writeValueAsString(inventory);

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
        this.inventoryJpaRepository.save(stock1);
    }

    @AfterEach
    public void clearDataPerTest() {
        if (getTestStock().isPresent()) inventoryJpaRepository.deleteById(getTestStock().get().getId());
    }

    @Test
    public void testRetrieveAllInventory() throws Exception {
        mockGetOption("/api/v1/inventory").andExpect(status().isOk());
        this.inventoryJpaRepository.deleteAll();
        mockGetOption("/api/v1/inventory").andExpect(status().isNotFound());
    }

    @Test
    public void testRetrieveInventoryByPagination() throws Exception {
        mockGetOption("/api/v2/inventory?engineNumber=FGRTERTY768").andExpect(status().isOk());
    }

    @Test
    public void testRetrieveInventoryByEngineNumber() throws Exception {
        mockGetOption("/api/v1/inventory/" + getTestStock().get().getEngineNumber()).andExpect(status().isOk());
        mockGetOption("/api/v1/inventory/12345").andExpect(status().isNotFound());
    }

    @Test
    void createStock() {
        Optional<Inventory> inventoryOptional = getTestStock();
        inventoryOptional.ifPresent(value -> {
            this.inventoryJpaRepository.deleteById(value.getId());
            try {
                mockPostOption("/api/v1/inventory/create-stock", stock1).andExpect(status().isCreated());
                clearDataPerTest();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
    }

    @Test
    void createStockWhenEngineNumberIsAlreadyUsed() throws Exception {
        mockPostOption("/api/v1/inventory/create-stock", stock1).andExpect(status().isBadRequest());
    }

    @Test
    void updateStock() throws Exception {
        mockPutOption("/api/v1/inventory/" + getTestStock().get().getEngineNumber(), stock1).andExpect(status().isOk());
        mockPutOption("/api/v1/inventory/111111", stock1).andExpect(status().isNotFound());
    }

    @Test
    void deleteStock() throws Exception {
        mockDeleteOption("/api/v1/inventory/" + getTestStock().get().getEngineNumber())
                .andExpect(status().isOk());
    }


}
