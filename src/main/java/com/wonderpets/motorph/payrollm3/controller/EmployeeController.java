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
import java.util.Map;
import java.util.Optional;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/api")
public class EmployeeController {

    private final EmployeeService employeeService;

    /**
     * Constructs a new EmployeeController with the specified EmployeeService.
     *
     * @param employeeService the EmployeeService to be used
     */
    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    /**
     * Wraps a list of Employees into a list of EntityModels.
     *
     * @param employees the list of Employees to be wrapped
     * @return the list of EntityModels containing the wrapped Employees
     */
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

    /**
     * Maps a list of Employees into a list of EntityModels.
     *
     * @param employees the list of Employees to be mapped
     * @return the list of EntityModels containing the mapped Employees
     */
    private List<EntityModel<Employees>> mapEmployeesIntoEntityModels(List<Employees> employees) {
        return wrapListOfEmployeesIntoEntityModels(employees);
    }

    /**
     * Retrieves all employees.
     *
     * @return the list of EntityModels containing all employees
     */
    @GetMapping("/v1/employees")
    public List<EntityModel<Employees>> retrieveAllEmployee() {
        return mapEmployeesIntoEntityModels(this.employeeService.retrieveAllEmployee());
    }

    /**
     * Retrieves employees with pagination.
     *
     * @param page the page number
     * @param size the number of employees per page
     * @return the list of EntityModels containing the retrieved employees
     */
    @GetMapping("/v2/employees")
    public List<EntityModel<Employees>> retrieveEmployees(@RequestParam(defaultValue = "0") int page,
                                                          @RequestParam(defaultValue = "5") int size) {
        return mapEmployeesIntoEntityModels(this.employeeService.retrieveEmployees(page, size));
    }

    /**
     * Retrieves an employee by ID.
     *
     * @param id the ID of the employee to retrieve
     * @return the EntityModel containing the retrieved employee (wrapped in an Optional)
     */
    @GetMapping("/v1/employees/{id}")
    public EntityModel<Optional<Employees>> retrieveEmployee(@PathVariable long id) {
        Optional<Employees> employee = this.employeeService.retrieveEmployee(id);
        EntityModel<Optional<Employees>> employeeEntityModel = EntityModel.of(employee);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                .retrieveAllEmployee());
        employeeEntityModel.add(linkBuilder.withRel("all-employee"));
        return employeeEntityModel;
    }

    /**
     * Creates a new employee.
     *
     * @param employee the employee to be created
     * @return the ResponseEntity representing the result of the operation
     */
    @PostMapping("/v1/create-employee")
    public ResponseEntity<Void> createEmployee(@Valid @RequestBody Employees employee) {
        return this.employeeService.createEmployee(employee);
    }

    /**
     * Deletes an employee by ID.
     *
     * @param id the ID of the employee to delete
     * @return the ResponseEntity representing the result of the operation
     */
    @DeleteMapping("/v1/employees/{id}")
    public ResponseEntity<Void> deleteEmployeeById(@PathVariable long id) {
        return this.employeeService.deleteEmployeeById(id);
    }

    /**
     * Updates an employee by ID.
     *
     * @param id       the ID of the employee to update
     * @param employee the updated employee data
     * @return the ResponseEntity representing the result of the operation
     */
    @PutMapping("/v1/employees/{id}")
    public ResponseEntity<Void> updateEmployeeById(@PathVariable long id, @RequestBody Employees employee) {
        return this.employeeService.updateEmployeeById(id, employee);
    }

    /**
     * Retrieves calculation data for an employee.
     *
     * @param username  the username of the employee
     * @param startDate the start date for the calculation
     * @param endDate   the end date for the calculation
     * @return a Map containing the calculation data
     */
    @PostMapping("/v1/employees/get-calculation-data/{username}")
    public Map<String, Double> retrieveCalculationData(@PathVariable String username,
                                                       @RequestParam String startDate,
                                                       @RequestParam String endDate) {
        return this.employeeService.retrieveCalculationData(username, startDate, endDate);
    }

}

