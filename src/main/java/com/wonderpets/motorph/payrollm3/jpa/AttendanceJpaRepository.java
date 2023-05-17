package com.wonderpets.motorph.payrollm3.jpa;

import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.model.Employees;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AttendanceJpaRepository extends JpaRepository<Attendance, Long> {
    Page<Attendance> findAllByEmployee(Employees employees, Pageable pageable);

    Optional<Attendance> findByName(String name);
}
