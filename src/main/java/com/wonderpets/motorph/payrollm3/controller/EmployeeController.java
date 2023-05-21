package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Employees;
import com.wonderpets.motorph.payrollm3.service.EmployeeService;
import jakarta.validation.Valid;
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

    private List<EntityModel<Employees>> wrapListOfEmployeesIntoEntityModels(List<Employees> employees) {
        List<EntityModel<Employees>> entityModels = new ArrayList<>();
        for (Employees employee : employees) {
            EntityModel<Employees> employeeEntityModel = EntityModel.of(employee);
            WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                    .retrieveEmployee(employee.getEmployeeId()));
            employeeEntityModel.add(linkBuilder.withSelfRel());
            entityModels.add(employeeEntityModel);
        }
        return entityModels;
    }

    private List<EntityModel<Employees>> mapEmployeesIntoEntityModels(List<Employees> employees) {
        return wrapListOfEmployeesIntoEntityModels(employees);
    }

    @GetMapping("/v1/employees")
    public List<EntityModel<Employees>> retrieveAllEmployee() {
        return mapEmployeesIntoEntityModels(this.employeeService.retrieveAllEmployee());
    }

    @GetMapping("/v2/employees")
    public List<EntityModel<Employees>> retrieveEmployees(@RequestParam(defaultValue = "0") int page,
                                                          @RequestParam(defaultValue = "5") int size) {
        return mapEmployeesIntoEntityModels(this.employeeService.retrieveEmployees(page, size));
    }

    @GetMapping("/v1/employees/{id}")
    public EntityModel<Optional<Employees>> retrieveEmployee(@PathVariable long id) {
        Optional<Employees> employee = this.employeeService.retrieveEmployee(id);
        EntityModel<Optional<Employees>> employeeEntityModel = EntityModel.of(employee);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                .retrieveAllEmployee());
        employeeEntityModel.add(linkBuilder.withRel("all-employee"));
        return employeeEntityModel;
    }

    @PostMapping("/v1/create-employee")
    public ResponseEntity<Void> createEmployee(@Valid @RequestBody Employees employee) {
        return this.employeeService.createEmployee(employee);
    }

    @DeleteMapping("/v1/employees/{id}")
    public ResponseEntity<Void> deleteEmployeeById(@PathVariable long id) {
        return this.employeeService.deleteEmployeeById(id);
    }

    @PutMapping("/v1/employees/{id}")
    public ResponseEntity<Void> updateEmployeeById(@PathVariable long id, @RequestBody Employees employee) {
        return this.employeeService.updateEmployeeById(id, employee);
    }

}
