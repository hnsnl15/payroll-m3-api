package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.UserAlreadyCreatedException;
import com.wonderpets.motorph.payrollm3.exception.UserNotFoundException;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeRepository;
import com.wonderpets.motorph.payrollm3.model.Employee;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.sql.DataSource;
import java.net.URI;
import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;
    private final DataSource dataSource;
    private final BCryptPasswordEncoder passwordEncoder;

    public EmployeeService(EmployeeRepository employeeRepository, DataSource dataSource, BCryptPasswordEncoder passwordEncoder) {
        this.employeeRepository = employeeRepository;
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

    public List<Employee> retrieveAllEmployee() {
        List<Employee> employees = this.employeeRepository.findAll();
        for (Employee employee : employees) {
            userDetailsService(employee.getUsername(), employee.getPassword());
        }
        return employees;
    }

    public List<Employee> retrieveEmployees(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Employee> employeePage = this.employeeRepository.findAll(pageable);
        return employeePage.getContent();
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

    public ResponseEntity<Void> createEmployee(@Valid @RequestBody Employee employee) {
        if (employeeRepository.findByUsername(employee.getUsername()).isPresent()) {
            throw new UserAlreadyCreatedException("Username is not available.");
        }
        if (employee.getPassword() == null) {
            throw new IllegalArgumentException("Password cannot be null.");
        }
        String encodedPassword = passwordEncoder.encode(employee.getPassword());
        employee.setPassword(encodedPassword);
        userDetailsService(employee.getUsername(), encodedPassword);
        Employee createdEmployee = employeeRepository.save(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdEmployee.getEmployee_id())
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
