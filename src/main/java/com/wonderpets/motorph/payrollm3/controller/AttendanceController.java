package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.service.AttendanceService;
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

    public AttendanceController(AttendanceService attendanceService) {
        this.attendanceService = attendanceService;
    }

    private List<EntityModel<Attendance>> mapAttendancesIntoEntityModels(List<Attendance> attendances) {
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

    @GetMapping("/v1/attendances")
    public List<EntityModel<Attendance>> retrieveAllAttendance() {
        List<Attendance> attendances = this.attendanceService.retrieveAllAttendance();
        return mapAttendancesIntoEntityModels(attendances);
    }

    @GetMapping("/v2/attendances")
    public List<EntityModel<Attendance>> retrieveAttendances(@RequestParam(defaultValue = "0") int page,
                                                             @RequestParam(defaultValue = "5") int size) {
        List<Attendance> attendances = this.attendanceService.retrieveAttendances(page, size);
        return mapAttendancesIntoEntityModels(attendances);
    }

    @GetMapping("/v3/attendances")
    public List<EntityModel<Attendance>> retrieveAttendances(@RequestParam(defaultValue = "0") int page,
                                                             @RequestParam(defaultValue = "5") int size,
                                                             @RequestParam long id) {
        List<Attendance> attendances = this.attendanceService.retrieveAttendances(page, size, id);
        return mapAttendancesIntoEntityModels(attendances);
    }

    @GetMapping("/v1/attendances/{id}")
    public EntityModel<Optional<Attendance>> retrieveAttendance(@PathVariable long id) {
        Optional<Attendance> optionalAttendance = this.attendanceService.retrieveAttendance(id);
        EntityModel<Optional<Attendance>> attendanceEntityModel = EntityModel.of(optionalAttendance);
        WebMvcLinkBuilder linkBuilder = WebMvcLinkBuilder.linkTo(methodOn(this.getClass()).retrieveAllAttendance());
        attendanceEntityModel.add(linkBuilder.withRel("all-attendance"));
        return attendanceEntityModel;
    }

    @PostMapping("/v1/create-attendance")
    public ResponseEntity<Void> createAttendance(@RequestBody Attendance attendance) {
        return this.attendanceService.createAttendance(attendance);
    }

}
