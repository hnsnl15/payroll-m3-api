package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.UserAlreadyCreatedException;
import com.wonderpets.motorph.payrollm3.exception.UserNotFoundException;
import com.wonderpets.motorph.payrollm3.jpa.AttendanceJpaRepository;
import com.wonderpets.motorph.payrollm3.jpa.EmployeeJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Employees;
import com.wonderpets.motorph.payrollm3.model.Role;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.net.URI;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static com.wonderpets.motorph.payrollm3.model.Employees.generateUsername;

@Service
@Transactional
public class EmployeeService {

    private final EmployeeJpaRepository employeeJpaRepository;
    private final DataSource dataSource;
    private final BCryptPasswordEncoder passwordEncoder;
    private final AttendanceService attendanceService;
    private final AttendanceJpaRepository attendanceJpaRepository;

    public EmployeeService(EmployeeJpaRepository employeeJpaRepository,
                           DataSource dataSource,
                           BCryptPasswordEncoder passwordEncoder,
                           AttendanceService attendanceService,
                           AttendanceJpaRepository attendanceJpaRepository) {
        this.employeeJpaRepository = employeeJpaRepository;
        this.dataSource = dataSource;
        this.passwordEncoder = passwordEncoder;
        this.attendanceService = attendanceService;
        this.attendanceJpaRepository = attendanceJpaRepository;
    }

    public void userDetailsService(String username, String password) {
        var jdbcUserDetailsManager = new JdbcUserDetailsManager(dataSource);
        if (!jdbcUserDetailsManager.userExists(username)) {
            User user = (User) User.withUsername(username)
                    .password(password)
                    .passwordEncoder(passwordEncoder::encode)
                    .roles(Role.USER.toString())
                    .build();
            jdbcUserDetailsManager.createUser(user);
        }
    }

    public List<Employees> retrieveAllEmployee() {
        List<Employees> employees = this.employeeJpaRepository.findAll();
        if (employees.isEmpty()) throw new UserNotFoundException("Employees not available.");
        for (Employees employee : employees) {
            userDetailsService(employee.getUsername(), employee.getPassword());
        }
        return employees;
    }

    public List<Employees> retrieveEmployees(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Employees> employeePage = this.employeeJpaRepository.findAll(pageable);
        return employeePage.getContent();
    }

    public Optional<Employees> retrieveEmployee(long id) {
        Optional<Employees> employee = this.employeeJpaRepository.findById(id);
        if (employee.isEmpty()) throw new UserNotFoundException("Employee is not in the record.");
        return employee;
    }

    public Optional<Employees> retrieveEmployeeByUsername(String username) {
        Optional<Employees> employee = this.employeeJpaRepository.findByUsername(username);
        if (employee.isEmpty()) throw new UserNotFoundException("Employee is not in the record.");
        return employee;
    }

    public ResponseEntity<Void> deleteEmployeeById(long id) {
        if (this.employeeJpaRepository.findById(id).isEmpty())
            throw new UserNotFoundException("Unable to delete employee, employee not found.");
        Optional<Employees> employee = this.employeeJpaRepository.findById(id);
        if (employee.isPresent()) {
            this.attendanceJpaRepository.deleteAllByEmployee(employee.get());
            this.employeeJpaRepository.deleteById(id);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }

    public ResponseEntity<Void> createEmployee(Employees employee) {
        if (employee.getPassword() == null) employee.setPassword("password123");

        String encodedPassword = passwordEncoder.encode(employee.getPassword());
        employee.setPassword(encodedPassword);
        employee.setUsername(generateUsername(employee.getFirstName(), employee.getLastName()));

        if (employeeJpaRepository.findByUsername(employee.getUsername()).isPresent())
            throw new UserAlreadyCreatedException("Username is not available.");

        userDetailsService(employee.getUsername(), encodedPassword);
        Employees createdEmployee = employeeJpaRepository.save(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdEmployee.getEmployeeId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    public ResponseEntity<Void> updateEmployeeById(long id, Employees employee) {
        if (employeeJpaRepository.findById(id).isEmpty())
            throw new UserNotFoundException("Employee is not on the record");
        Optional<Employees> optionalEmployees = this.employeeJpaRepository.findById(id);
        if (optionalEmployees.isPresent()) {
            employee.setUsername(optionalEmployees.get().getUsername());
            employee.setPassword(optionalEmployees.get().getPassword());
            employee.setUserRole(optionalEmployees.get().getUserRole());
            employeeJpaRepository.save(employee);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.badRequest().build();
    }

    public Map<String, Double> retrieveCalculationData(String username, String startDate, String endDate) {
        BigDecimal wage = BigDecimal.valueOf(calculateSalary(username, startDate, endDate));
        long leaveHours = calculateLeaveHours(username, startDate, endDate);

        Map<String, Double> data = new HashMap<>();
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        data.put("sss", formatDecimal(calculateSSSContribution(wage), decimalFormat));
        data.put("philhealth", formatDecimal(calculatePhilhealthContribution(wage), decimalFormat));
        data.put("pagibig", formatDecimal(calculatePagibigContribution(wage), decimalFormat));
        data.put("netIncome", formatDecimal(calculateNetIncome(wage), decimalFormat));
        data.put("leaveHours", (double) leaveHours);
        data.put("totalDeductions", formatDecimal(calculateTotalDeduction(wage.subtract(BigDecimal.valueOf(leaveHours))), decimalFormat));

        return data;
    }

    private double formatDecimal(double value, DecimalFormat decimalFormat) {
        return Double.parseDouble(decimalFormat.format(value));
    }

    private double calculateSalary(String username, String startDate, String endDate) {
        Optional<Employees> employee = retrieveEmployeeByUsername(username);
        long hoursWorked = attendanceService.calculateHoursWorked(username, startDate, endDate);
        long leaveHours = calculateLeaveHours(username, startDate, endDate);
        BigDecimal rate = employee.get().getHourlyRate();
        return rate.multiply(BigDecimal.valueOf(hoursWorked - leaveHours)).doubleValue();
    }

    private long calculateLeaveHours(String username, String startDate, String endDate) {
        return this.attendanceService.calculateHoursLeave(username, startDate, endDate);
    }

    private double calculateTotalDeduction(BigDecimal wage) {
        double getSSS = calculateSSSContribution(wage);
        double getPhilhealth = calculatePhilhealthContribution(wage);
        double getPagibig = calculatePagibigContribution(wage);
        return getSSS + getPhilhealth + getPagibig;
    }

    private double calculateSSSContribution(BigDecimal wage) {
        double salary = wage.doubleValue();
        double contribution = 1125.00;

        if (salary <= 3250) {
            contribution = 135.00;
        } else if (salary <= 3750) {
            contribution = 157.50;
        } else if (salary <= 4250) {
            contribution = 180.00;
        } else if (salary <= 4750) {
            contribution = 202.50;
        } else if (salary <= 5250) {
            contribution = 225.00;
        } else if (salary <= 5750) {
            contribution = 247.50;
        } else if (salary <= 6250) {
            contribution = 315.00;
        } else if (salary <= 6750) {
            contribution = 337.50;
        } else if (salary <= 7250) {
            contribution = 360.00;
        } else if (salary <= 7750) {
            contribution = 382.50;
        } else if (salary <= 8250) {
            contribution = 405.00;
        } else if (salary <= 8750) {
            contribution = 427.50;
        } else if (salary <= 9250) {
            contribution = 450.00;
        } else if (salary <= 9750) {
            contribution = 472.50;
        } else if (salary <= 10250) {
            contribution = 495.00;
        } else if (salary <= 10750) {
            contribution = 517.50;
        } else if (salary <= 11250) {
            contribution = 540.00;
        } else if (salary <= 11750) {
            contribution = 562.50;
        } else if (salary <= 12250) {
            contribution = 585.00;
        } else if (salary <= 12750) {
            contribution = 607.50;
        } else if (salary <= 13250) {
            contribution = 630.00;
        } else if (salary <= 13750) {
            contribution = 652.50;
        } else if (salary <= 14250) {
            contribution = 697.50;
        } else if (salary <= 14750) {
            contribution = 720.00;
        } else if (salary <= 15250) {
            contribution = 742.50;
        } else if (salary <= 15750) {
            contribution = 765.00;
        } else if (salary <= 16250) {
            contribution = 787.50;
        } else if (salary <= 16750) {
            contribution = 810.00;
        } else if (salary <= 17250) {
            contribution = 832.50;
        } else if (salary <= 17750) {
            contribution = 855.00;
        } else if (salary <= 18250) {
            contribution = 877.50;
        } else if (salary <= 18750) {
            contribution = 900.00;
        } else if (salary <= 19250) {
            contribution = 922.50;
        } else if (salary <= 19750) {
            contribution = 945.50;
        } else if (salary <= 20250) {
            contribution = 990.00;
        } else if (salary <= 20750) {
            contribution = 1012.50;
        } else if (salary <= 21250) {
            contribution = 1035.00;
        } else if (salary <= 21750) {
            contribution = 1057.50;
        } else if (salary <= 22250) {
            contribution = 1080.00;
        } else if (salary <= 22750) {
            contribution = 1012.50;
        } else if (salary <= 23250) {
            contribution = 1035.00;
        } else if (salary <= 23750) {
            contribution = 1057.50;
        } else if (salary <= 24250) {
            contribution = 1080.00;
        } else if (salary <= 24750) {
            contribution = 1102.50;
        }

        return contribution;
    }

    private double calculatePhilhealthContribution(BigDecimal wage) {
        return wage.doubleValue() * 0.015;
    }

    private double calculatePagibigContribution(BigDecimal wage) {
        return wage.doubleValue() < 1500 ? wage.doubleValue() * 0.01 : 100;
    }

    private double calculateTax(BigDecimal wage) {
        double salary = wage.doubleValue() - calculateTotalDeduction(wage);
        double taxRate = 0;

        if (salary > 20832 && salary <= 33333) {
            taxRate = (salary - 20833) * 0.20;
        } else if (salary > 33333 && salary <= 66667) {
            taxRate = 2500 + ((salary - 33333) * 0.25);
        } else if (salary > 66667 && salary <= 166667) {
            taxRate = 10833 + ((salary - 66667) * 0.30);
        } else if (salary > 166667 && salary <= 666667) {
            taxRate = 166667 + ((salary - 40833.33) * 0.32);
        } else if (salary > 666667) {
            taxRate = 200833.33 + ((salary - 666667) * 0.35);
        }

        return taxRate;
    }

    private double calculateNetIncome(BigDecimal wage) {
        return (wage.doubleValue() - calculateTax(wage)) / 2;
    }


}
