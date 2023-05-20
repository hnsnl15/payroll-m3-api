package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.UserAlreadyCreatedException;
import com.wonderpets.motorph.payrollm3.exception.UserNotFoundException;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Employees;
import com.wonderpets.motorph.payrollm3.model.Role;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.sql.DataSource;
import java.net.URI;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class EmployeeService {

    private final EmployeeJpaRepository employeeJpaRepository;
    private final DataSource dataSource;
    private final BCryptPasswordEncoder passwordEncoder;

    public EmployeeService(EmployeeJpaRepository employeeJpaRepository, DataSource dataSource, BCryptPasswordEncoder passwordEncoder) {
        this.employeeJpaRepository = employeeJpaRepository;
        this.dataSource = dataSource;
        this.passwordEncoder = passwordEncoder;
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

    public List<Employees> retrieveAllEmployee() {
        List<Employees> employees = this.employeeJpaRepository.findAll();
        if (employees.isEmpty()) throw new UserNotFoundException("Employees not available.");
        for (Employees employee : employees) {
            userDetailsService(employee.getUsername(), employee.getPassword());
        }
        return employees;
    }

    public List<Employees> retrieveEmployees(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Employees> employeePage = this.employeeJpaRepository.findAll(pageable);
        return employeePage.getContent();
    }

    public Optional<Employees> retrieveEmployee(long id) {
        Optional<Employees> employee = this.employeeJpaRepository.findById(id);
        if (employee.isEmpty()) throw new UserNotFoundException("Employee is not in the record.");
        return employee;
    }

    public ResponseEntity<Void> deleteEmployeeById(long id) {
        if (this.employeeJpaRepository.findById(id).isEmpty())
            throw new UserNotFoundException("Unable to delete employee, employee not found.");
        this.employeeJpaRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

    public ResponseEntity<Void> createEmployee(@Valid @RequestBody Employees employee) {
        if (employeeJpaRepository.findByUsername(employee.getUsername()).isPresent())
            throw new UserAlreadyCreatedException("Username is not available.");

        if (employee.getPassword() == null)
            throw new IllegalArgumentException("Password cannot be null.");

        String encodedPassword = passwordEncoder.encode(employee.getPassword());
        employee.setPassword(encodedPassword);
        userDetailsService(employee.getUsername(), encodedPassword);
        Employees createdEmployee = employeeJpaRepository.save(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdEmployee.getEmployeeId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    public ResponseEntity<Void> updateEmployeeById(@PathVariable long id, @RequestBody Employees employee) {
        if (employeeJpaRepository.findById(id).isEmpty())
            throw new UserNotFoundException("Employee is not on the record");
        employeeJpaRepository.save(employee);
        return ResponseEntity.ok().build();
    }


}
