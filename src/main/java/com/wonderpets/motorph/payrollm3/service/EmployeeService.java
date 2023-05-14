package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.jpa.EmployeeRepository;
import com.wonderpets.motorph.payrollm3.model.Employee;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;

    public EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public List<Employee> retrieveAllEmployee() {
        return employeeRepository.findAll();
    }

    public Optional<Employee> retrieveEmployee(long id) {
        return employeeRepository.findById(id);
    }

    public ResponseEntity<Void> deleteEmployeeById(long id) {
        employeeRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }


}
