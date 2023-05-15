package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.UserAlreadyCreatedException;
import com.wonderpets.motorph.payrollm3.exception.UserNotFoundException;
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
        return this.employeeRepository.findAll();
    }

    public Optional<Employee> retrieveEmployee(long id) {
        Optional<Employee> employee = this.employeeRepository.findById(id);
        if (employee.isEmpty()) {
            throw new UserNotFoundException("Employee is not in the record.");
        }
        return employee;
    }

    public ResponseEntity<Void> deleteEmployeeById(long id) {
        if (this.employeeRepository.findById(id).isEmpty()) {
            throw new UserNotFoundException("Unable to delete employee, employee not found.");
        }
        this.employeeRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

    public ResponseEntity<Void> createEmployee(@RequestBody Employee employee) {
        if (employeeRepository.findByUsername(employee.getUsername()).isPresent()) {
            throw new UserAlreadyCreatedException("Username is not available.");
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
