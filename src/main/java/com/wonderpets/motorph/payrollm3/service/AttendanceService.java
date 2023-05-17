package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.jpa.AttendanceJpaRepository;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeRepository;
import com.wonderpets.motorph.payrollm3.model.Attendance;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.time.LocalDate;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class AttendanceService {

    private final AttendanceJpaRepository attendanceJpaRepository;
    private final EmployeeRepository employeeRepository;

    public AttendanceService(AttendanceJpaRepository attendanceJpaRepository, EmployeeRepository employeeRepository) {
        this.attendanceJpaRepository = attendanceJpaRepository;
        this.employeeRepository = employeeRepository;
    }

    public List<Attendance> retrieveAllAttendance() {
        List<Attendance> attendances = this.attendanceJpaRepository.findAll();
        if (attendances.isEmpty()) return null;
        return attendances;
    }

    public Optional<Attendance> retrieveAttendance(long id) {
        Optional<Attendance> attendance = this.attendanceJpaRepository.findById(id);
        if (attendance.isEmpty()) throw new IllegalArgumentException("No attendance found!");
        return attendance;
    }

    public List<Attendance> retrieveAttendances(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Attendance> attendancePage = this.attendanceJpaRepository.findAll(pageable);
        if (attendancePage.isEmpty()) return null;
        return attendancePage.getContent();
    }

    public List<Attendance> retrieveAttendances(int page, int size, long id) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Attendance> attendancePage = retrieveAttendancesByEmployeeId(id, pageable);
        if (attendancePage.isEmpty()) {
            return Collections.emptyList();
        }
        return attendancePage.getContent();
    }

    public Page<Attendance> retrieveAttendancesByEmployeeId(long id, Pageable pageable) {
        return employeeRepository.findById(id)
                .map(employee -> attendanceJpaRepository.findAllByEmployee(employee, pageable))
                .orElse(Page.empty());
    }

    public ResponseEntity<Void> createAttendance(@RequestBody Attendance attendance) {
        LocalDate attendanceDate = LocalDate.parse(attendance.getDate());
        if (attendanceDate.isAfter(LocalDate.now())) {
            return ResponseEntity.badRequest().build();
        }
        Attendance createdAttendance = attendanceJpaRepository.save(attendance);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdAttendance.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }


}
