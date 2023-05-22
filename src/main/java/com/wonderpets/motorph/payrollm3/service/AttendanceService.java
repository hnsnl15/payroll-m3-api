package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.UserNotFoundException;
import com.wonderpets.motorph.payrollm3.jpa.AttendanceJpaRepository;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.model.Employees;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
@Transactional
public class AttendanceService {

    private final AttendanceJpaRepository attendanceJpaRepository;
    private final EmployeeJpaRepository employeeJpaRepository;

    public AttendanceService(AttendanceJpaRepository attendanceJpaRepository, EmployeeJpaRepository employeeJpaRepository) {
        this.attendanceJpaRepository = attendanceJpaRepository;
        this.employeeJpaRepository = employeeJpaRepository;
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

    public List<Attendance> retrieveAllAttendancePageable(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Attendance> attendancePage = this.attendanceJpaRepository.findAll(pageable);
        if (attendancePage.isEmpty()) return null;
        return attendancePage.getContent();
    }

    public List<Attendance> retrieveAttendancesByEmployeeIdPageable(int page, int size, long id) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Attendance> attendancePage = retrieveAttendancesByEmployeeId(id, pageable);
        if (attendancePage.isEmpty()) {
            return Collections.emptyList();
        }
        return attendancePage.getContent();
    }

    private Page<Attendance> retrieveAttendancesByEmployeeId(long id, Pageable pageable) {
        return employeeJpaRepository.findById(id)
                .map(employee -> attendanceJpaRepository.findAllByEmployeeWithPageable(employee, pageable))
                .orElse(Page.empty());
    }

    public ResponseEntity<Void> createAttendance(Attendance attendance) {
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

    public long calculateHoursWorked(String username, String startDate, String endDate) {
        Employees employee = getEmployeeByUsername(username);

        List<Attendance> attendances = getAttendances(employee);
        if (attendances.isEmpty()) {
            throw new NoSuchElementException("Attendance is not available.");
        }

        LocalDate start = parseDate(startDate);
        LocalDate end = parseDate(endDate);

        long totalHoursWorked = 0;

        for (Attendance attendance : attendances) {
            LocalDate attendanceDate = parseDate(attendance.getDate());
            if (isDateOutsideRange(attendanceDate, start, end)) {
                continue;
            }

            LocalTime startTime = parseTime(attendance.getTimeIn());
            LocalTime endTime = parseTime(attendance.getTimeOut());

            LocalDateTime startDateTime = LocalDateTime.of(attendanceDate, startTime);
            LocalDateTime endDateTime = LocalDateTime.of(attendanceDate, endTime);

            long hoursWorked = startDateTime.until(endDateTime, ChronoUnit.HOURS);
            totalHoursWorked += hoursWorked;
        }

        return totalHoursWorked;
    }

    public long calculateHoursLeave(String username, String startDate, String endDate) {
        Employees employee = getEmployeeByUsername(username);

        List<Attendance> attendances = getAttendances(employee);
        if (attendances.isEmpty()) {
            throw new NoSuchElementException("Attendance is not available.");
        }

        LocalDate start = parseDate(startDate);
        LocalDate end = parseDate(endDate);

        long totalHoursLeave = 0;

        for (Attendance attendance : attendances) {
            LocalDate attendanceDate = parseDate(attendance.getDate());
            if (isDateOutsideRange(attendanceDate, start, end)) {
                continue;
            }

            LocalTime startTime = parseTime(attendance.getTimeIn());
            LocalTime endTime = parseTime(attendance.getTimeOut());

            LocalDateTime startDateTime = LocalDateTime.of(attendanceDate, startTime);
            LocalDateTime endDateTime = LocalDateTime.of(attendanceDate, endTime);

            long hoursWorked = startDateTime.until(endDateTime, ChronoUnit.HOURS);

            if (attendance.isOnLeave()) {
                totalHoursLeave += hoursWorked;
            }
        }

        return totalHoursLeave;
    }

    private Employees getEmployeeByUsername(String username) {
        return employeeJpaRepository.findByUsername(username)
                .orElseThrow(() -> new UserNotFoundException("Employee is not in the record."));
    }

    private List<Attendance> getAttendances(Employees employee) {
        return attendanceJpaRepository.findAllByEmployeeWithoutPageable(employee);
    }

    private LocalDate parseDate(String dateString) {
        List<String> patterns = List.of("yyyy-MM-dd", "MM/dd/yyyy");
        for (String pattern : patterns) {
            try {
                return LocalDate.parse(dateString, DateTimeFormatter.ofPattern(pattern));
            } catch (DateTimeParseException ignored) {
            }
        }
        throw new IllegalArgumentException("Invalid date format: " + dateString);
    }

    private LocalTime parseTime(String time) {
        String[] patterns = {"H:mm", "HH:mm"};
        for (String pattern : patterns) {
            try {
                return LocalTime.parse(time, DateTimeFormatter.ofPattern(pattern));
            } catch (Exception ignored) {
            }
        }
        throw new IllegalArgumentException("Invalid time format: " + time);
    }

    private boolean isDateOutsideRange(LocalDate date, LocalDate start, LocalDate end) {
        return date.isBefore(start) || date.isAfter(end);
    }


}
