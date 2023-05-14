package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.jpa.EmployeeRepository;
import com.wonderpets.motorph.payrollm3.model.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;

    public EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public List<Employee> retrieveAllEmployee() {
        return employeeRepository.findAll();
    }

}
