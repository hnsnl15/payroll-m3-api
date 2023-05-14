package com.wonderpets.motorph.payrollm3;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class PayrollM3ApplicationTests {

    @Autowired
    private PayrollM3Application application;

    @Test
    void contextLoads() {
        // Test if the application context loads successfully
        Assertions.assertNotNull(application, "The application context failed to load.");
    }

    @Test
    void applicationRunsSuccessfully() {
        // Test if the application runs successfully
        // Perform any assertions or verifications here

        // Example: Check if the application instance is not null
        Assertions.assertNotNull(application, "The application failed to start successfully.");
    }

}
