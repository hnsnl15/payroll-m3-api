package com.wonderpets.motorph.payrollm3.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Attendance {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Generated(GenerationTime.INSERT)
    @JsonIgnoreProperties(allowGetters = true, value = {"id"})
    private long id;
    private String name;
    @Column(name = "date_of_attendance")
    private String date;
    private String timeIn;
    private String timeOut;
    private boolean isLate;
    private boolean isAbsent;

    @ManyToOne
    @JoinColumn(name = "employee_id", referencedColumnName = "employeeId")
    private Employees employee;

    public Attendance() {
    }

    public Attendance(String date, String timeIn, String timeOut, boolean isLate, boolean isAbsent, Employees employee) {
        this.name = employee.getFirstName().strip() + " " + employee.getLastName().strip();
        this.date = date;
        this.timeIn = timeIn;
        this.timeOut = timeOut;
        this.isLate = isLate;
        this.isAbsent = isAbsent;
        this.employee = employee;
    }

    private String formatStringDate(String dateString) {
        List<String> patterns = List.of("yyyy-MM-dd", "M/d/yyyy");
        for (String pattern : patterns) {
            try {
                LocalDate localDate = LocalDate.parse(dateString, DateTimeFormatter.ofPattern(pattern));
                return LocalDate.parse(localDate.toString(), DateTimeFormatter.ofPattern("yyyy-MM-dd")).toString();
            } catch (DateTimeParseException ignored) {
            }
        }
        throw new IllegalArgumentException("Invalid date format: " + dateString);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = formatStringDate(date);
    }

    public String getTimeIn() {
        return timeIn;
    }

    public void setTimeIn(String timeIn) {
        this.timeIn = timeIn;
    }

    public String getTimeOut() {
        return timeOut;
    }

    public void setTimeOut(String timeOut) {
        this.timeOut = timeOut;
    }

    public boolean isAbsent() {
        return isAbsent;
    }

    public void setAbsent(boolean absent) {
        isAbsent = absent;
    }

    public boolean isLate() {
        return isLate;
    }

    public void setLate(boolean late) {
        isLate = late;
    }

    public Employees getEmployee() {
        return employee;
    }

    public void setEmployee(Employees employee) {
        this.employee = employee;
    }
}
