package com.wonderpets.motorph.payrollm3.jpa;

import com.wonderpets.motorph.payrollm3.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
