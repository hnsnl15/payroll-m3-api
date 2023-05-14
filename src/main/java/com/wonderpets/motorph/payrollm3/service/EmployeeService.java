package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.jpa.EmployeeRepository;
import com.wonderpets.motorph.payrollm3.model.Employee;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
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
        return ResponseEntity.ok().build();
    }

    public ResponseEntity<Void> createEmployee(@RequestBody Employee employee) {
        if (employeeRepository.findByUsername(employee.getUsername()).isPresent()) {
            return ResponseEntity.badRequest().build();
        }
        Employee createdEmployee = employeeRepository.save(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdEmployee.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    public ResponseEntity<Void> updateEmployeeById(@PathVariable long id, @RequestBody Employee employee) {
        if (employeeRepository.findById(id).isEmpty()) {
            return ResponseEntity.badRequest().build();
        }
        employeeRepository.save(employee);
        return ResponseEntity.ok().build();
    }


}
