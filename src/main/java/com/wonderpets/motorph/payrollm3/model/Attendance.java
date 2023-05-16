package com.wonderpets.motorph.payrollm3.model;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;

@Entity
public class Attendance {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "attendance_sequence")
    @SequenceGenerator(name = "attendance_id_generator", sequenceName = "attendance_sequence", initialValue = 10001)
    private long id;
    private String name;
    private String date;
    private String timeIn;
    private String timeOut;
    private boolean isLate;
    private boolean isAbsent;

    @ManyToOne
    @JoinColumn(name = "emp_id", referencedColumnName = "emp_id")
    private Employee employee;


    public Attendance(String name, String date, String timeIn, String timeOut, boolean isLate, boolean isAbsent) {
        this.name = name;
        this.date = formatStringDate(date);
        this.timeIn = timeIn;
        this.timeOut = timeOut;
        this.isLate = isLate;
        this.isAbsent = isAbsent;
    }

    public Attendance(String name, String date, String timeIn, String timeOut) {
        this.name = name;
        this.date = formatStringDate(date);
        this.timeIn = timeIn;
        this.timeOut = timeOut;
        this.isLate = false;
        this.isAbsent = false;
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

    public void setId(int id) {
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
}
