package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.service.AttendanceService;
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
public class AttendanceController {

    private final AttendanceService attendanceService;

    /**
     * Constructs an instance of AttendanceController.
     *
     * @param attendanceService the attendance service to be used
     */
    public AttendanceController(AttendanceService attendanceService) {
        this.attendanceService = attendanceService;
    }

    /**
     * Wraps a list of Attendance objects into EntityModel objects and adds self links.
     *
     * @param attendances the list of Attendance objects to be wrapped
     * @return the list of EntityModel objects containing wrapped Attendance objects with self links
     */
    private List<EntityModel<Attendance>> wrapAttendancesIntoEntityModels(List<Attendance> attendances) {
        List<EntityModel<Attendance>> entityModels = new ArrayList<>();
        for (Attendance attendance : attendances) {
            EntityModel<Attendance> attendanceEntityModel = EntityModel.of(attendance);
            WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                    .retrieveAttendance(attendance.getId()));
            attendanceEntityModel.add(linkBuilder.withSelfRel());
            entityModels.add(attendanceEntityModel);
        }
        return entityModels;
    }

    /**
     * Retrieves all Attendance objects.
     *
     * @return the list of EntityModel objects containing all Attendance objects with self links
     */
    @GetMapping("/v1/attendances")
    public List<EntityModel<Attendance>> retrieveAllAttendance() {
        return wrapAttendancesIntoEntityModels(this.attendanceService.retrieveAllAttendance());
    }

    /**
     * Retrieves paged Attendance objects.
     *
     * @param page the page number (default: 0)
     * @param size the page size (default: 5)
     * @return the list of EntityModel objects containing paged Attendance objects with self links
     */
    @GetMapping("/v2/attendances")
    public List<EntityModel<Attendance>> retrieveAttendancesPageable(@RequestParam(defaultValue = "0") int page,
                                                                     @RequestParam(defaultValue = "5") int size) {
        return wrapAttendancesIntoEntityModels(this.attendanceService.retrieveAllAttendancePageable(page, size));
    }

    /**
     * Retrieves paged Attendance objects by employee ID.
     *
     * @param page the page number (default: 0)
     * @param size the page size (default: 5)
     * @param id   the employee ID
     * @return the list of EntityModel objects containing paged Attendance objects for the specified employee with self links
     */
    @GetMapping("/v1/attendances/employee")
    public List<EntityModel<Attendance>> retrieveAttendancesByEmployeeIdPageable(@RequestParam(defaultValue = "0") int page,
                                                                                 @RequestParam(defaultValue = "5") int size,
                                                                                 @RequestParam long id) {
        return wrapAttendancesIntoEntityModels(this.attendanceService.retrieveAttendancesByEmployeeIdPageable(page, size, id));
    }

    /**
     * Retrieves Attendance object by date.
     *
     * @param date the date parameter
     * @return the Attendance object for the specified date
     */
    @GetMapping("/v1/attendances/date")
    public Attendance retrieveAttendancesByDatePageable(@RequestParam String date) {
        return this.attendanceService.retrieveAttendancesByDatePageable(date);
    }

    /**
     * Retrieves Attendance object by date and ID.
     *
     * @param date the date parameter
     * @param id   the ID parameter
     * @return the Attendance object for the specified date and ID
     */
    @GetMapping("/v2/attendances/date")
    public Attendance retrieveAttendancesByDateWithIdPageable(@RequestParam String date,
                                                              @RequestParam long id) {
        return this.attendanceService.retrieveAttendancesByDateWithIdPageable(date, id);
    }

    /**
     * Retrieves the Attendance object by ID.
     *
     * @param id the ID of the Attendance object to retrieve
     * @return the EntityModel object containing the Attendance object with a link to retrieve all attendances
     */
    @GetMapping("/v1/attendances/{id}")
    public EntityModel<Optional<Attendance>> retrieveAttendance(@PathVariable long id) {
        Optional<Attendance> optionalAttendance = this.attendanceService.retrieveAttendance(id);
        EntityModel<Optional<Attendance>> attendanceEntityModel = EntityModel.of(optionalAttendance);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass()).retrieveAllAttendance());
        attendanceEntityModel.add(linkBuilder.withRel("all-attendance"));
        return attendanceEntityModel;
    }

    /**
     * Creates a new Attendance object.
     *
     * @param attendance the Attendance object to be created
     * @return the ResponseEntity indicating the success of the operation
     */
    @PostMapping("/v1/create-attendance")
    public ResponseEntity<Void> createAttendance(@Valid @RequestBody Attendance attendance) {
        return this.attendanceService.createAttendance(attendance);
    }

    /**
     * Calculates the total hours worked per week for an employee.
     *
     * @param username  the username of the employee
     * @param startDate the start date for the calculation
     * @param endDate   the end date for the calculation
     * @return the total number of hours worked per week
     */
    @GetMapping("/v1/calculate/hours-worked/{username}")
    public long calculateHoursWorkedPerWeek(@PathVariable String username,
                                            @RequestParam String startDate,
                                            @RequestParam String endDate) {
        return this.attendanceService.calculateHoursWorked(username, startDate, endDate);
    }
}
