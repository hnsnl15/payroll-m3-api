package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Employee;
import com.wonderpets.motorph.payrollm3.service.EmployeeService;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/api")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/v1/employees")
    public List<EntityModel<Employee>> retrieveAllEmployee() {
        List<Employee> employees = this.employeeService.retrieveAllEmployee();
        List<EntityModel<Employee>> entityModels = new ArrayList<>();
        for (Employee employee : employees) {
            EntityModel<Employee> employeeEntityModel = EntityModel.of(employee);
            WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                    .retrieveEmployee(employee.getId()));
            employeeEntityModel.add(linkBuilder.withSelfRel());
            entityModels.add(employeeEntityModel);
        }
        return entityModels;
    }

    @GetMapping("/v1/employees/{id}")
    public EntityModel<Optional<Employee>> retrieveEmployee(@PathVariable long id) {
        Optional<Employee> employee = this.employeeService.retrieveEmployee(id);
        EntityModel<Optional<Employee>> employeeEntityModel = EntityModel.of(employee);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                .retrieveAllEmployee());
        employeeEntityModel.add(linkBuilder.withRel("all-employee"));
        return employeeEntityModel;
    }

    @PostMapping("/v1/create-employee")
    public ResponseEntity<Void> createEmployee(@RequestBody Employee employee) {
        return this.employeeService.createEmployee(employee);
    }

    @DeleteMapping("/v1/employees/{id}")
    public ResponseEntity<Void> deleteEmployeeById(@PathVariable long id) {
        return this.employeeService.deleteEmployeeById(id);
    }

    @PutMapping("/v1/employees/{id}")
    public ResponseEntity<Void> updateEmployeeById(@PathVariable long id, @RequestBody Employee employee) {
        return this.employeeService.updateEmployeeById(id, employee);
    }

}
