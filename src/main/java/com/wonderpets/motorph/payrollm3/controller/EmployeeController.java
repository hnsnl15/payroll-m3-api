package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Employee;
import com.wonderpets.motorph.payrollm3.service.EmployeeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/v1/employees")
    public List<Employee> retrieveAllEmployee() {
        return employeeService.retrieveAllEmployee();
    }

    @GetMapping("/v1/employees/{id}")
    public Optional<Employee> retrieveEmployee(@PathVariable long id) {
        return employeeService.retrieveEmployee(id);
    }

}
