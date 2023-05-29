package com.wonderpets.motorph.payrollm3.jpa;

import com.wonderpets.motorph.payrollm3.model.Attendance;
import com.wonderpets.motorph.payrollm3.model.Employees;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AttendanceJpaRepository extends JpaRepository<Attendance, Long> {
    @Query("SELECT a FROM Attendance a WHERE a.employee = :employee")
    Page<Attendance> findAllByEmployeeWithPageable(@Param("employee") Employees employees, Pageable pageable);

    @Query("SELECT a FROM Attendance a WHERE a.employee = :employee")
    List<Attendance> findAllByEmployeeWithoutPageable(@Param("employee") Employees employees);

    @Query("SELECT a FROM Attendance a WHERE a.date = :date")
    Page<Attendance> findAllByDatePageable(@Param("date") String date, Pageable pageable);

    Optional<Attendance> findByName(String name);

    Optional<Attendance> findByDate(String date);

    void deleteAllByEmployee(Employees employee);
}
