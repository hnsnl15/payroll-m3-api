package com.wonderpets.motorph.payrollm3.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@DiscriminatorColumn(name = "person_type")
@JsonIgnoreProperties(ignoreUnknown = true)
public class Employee extends Person {

    private String lastName;
    private String firstName;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private String birthday;
    private String address;
    private String phoneNumber;
    private String sssNo;
    private String philhealthNo;
    private String tinNo;
    private String pagibigNo;
    private String status;
    private String position;
    private String immediateSupervisor;
    private BigDecimal basicSalary;
    private BigDecimal riceSubsidy;
    private BigDecimal phoneAllowance;
    private BigDecimal clothingAllowance;
    private BigDecimal grossSemiMonthlyRate;
    private BigDecimal hourlyRate;

    @OneToMany(mappedBy = "employee")
    @JsonIgnore
    private List<Attendance> attendances;

    public Employee() {
        super();
    }

    public Employee(String lastName, String firstName, String password, String birthday, String address, String phoneNumber,
                    String sssNo, String philhealthNo, String tinNo, String pagibigNo, String status, String position,
                    String immediateSupervisor, double basicSalary, double riceSubsidy,
                    double phoneAllowance, double clothingAllowance, double grossSemiMonthlyRate,
                    double hourlyRate) {
        super(Role.USER.toString(), generateUsername(firstName, lastName), password);
        this.lastName = lastName;
        this.firstName = firstName;
        this.birthday = formatStringDate(birthday);
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.sssNo = sssNo;
        this.philhealthNo = philhealthNo;
        this.tinNo = tinNo;
        this.pagibigNo = pagibigNo;
        this.status = status;
        this.position = position;
        this.immediateSupervisor = immediateSupervisor;
        this.basicSalary = doubleToBigDecimalConverter(basicSalary);
        this.riceSubsidy = doubleToBigDecimalConverter(riceSubsidy);
        this.phoneAllowance = doubleToBigDecimalConverter(phoneAllowance);
        this.clothingAllowance = doubleToBigDecimalConverter(clothingAllowance);
        this.grossSemiMonthlyRate = doubleToBigDecimalConverter(grossSemiMonthlyRate);
        this.hourlyRate = doubleToBigDecimalConverter(hourlyRate);
    }

    private static String generateUsername(String firstName, String lastName) {
        String username = firstName.strip().replace(" ", "")
                + lastName.strip().replace(" ", "");
        return username.toLowerCase();
    }

    private String formatStringDate(String dateString) {
        List<String> patterns = List.of("yyyy-MM-dd", "MM/dd/yyyy");
        for (String pattern : patterns) {
            try {
                LocalDate localDate = LocalDate.parse(dateString, DateTimeFormatter.ofPattern(pattern));
                return LocalDate.parse(localDate.toString(), DateTimeFormatter.ofPattern("yyyy-MM-dd")).toString();
            } catch (DateTimeParseException ignored) {
            }
        }
        throw new IllegalArgumentException("Invalid date format: " + dateString);
    }

    private BigDecimal doubleToBigDecimalConverter(double doubleValue) {
        return new BigDecimal(doubleValue);
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = formatStringDate(birthday);
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSssNo() {
        return sssNo;
    }

    public void setSssNo(String sssNo) {
        this.sssNo = sssNo;
    }

    public String getPhilhealthNo() {
        return philhealthNo;
    }

    public void setPhilhealthNo(String philhealthNo) {
        this.philhealthNo = philhealthNo;
    }

    public String getTinNo() {
        return tinNo;
    }

    public void setTinNo(String tinNo) {
        this.tinNo = tinNo;
    }

    public String getPagibigNo() {
        return pagibigNo;
    }

    public void setPagibigNo(String pagibigNo) {
        this.pagibigNo = pagibigNo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getImmediateSupervisor() {
        return immediateSupervisor;
    }

    public void setImmediateSupervisor(String immediateSupervisor) {
        this.immediateSupervisor = immediateSupervisor;
    }

    public BigDecimal getBasicSalary() {
        return basicSalary;
    }

    public void setBasicSalary(double basicSalary) {
        this.basicSalary = doubleToBigDecimalConverter(basicSalary);
    }

    public BigDecimal getRiceSubsidy() {
        return riceSubsidy;
    }

    public void setRiceSubsidy(double riceSubsidy) {
        this.riceSubsidy = doubleToBigDecimalConverter(riceSubsidy);
    }

    public BigDecimal getPhoneAllowance() {
        return phoneAllowance;
    }

    public void setPhoneAllowance(double phoneAllowance) {
        this.phoneAllowance = doubleToBigDecimalConverter(phoneAllowance);
    }

    public BigDecimal getClothingAllowance() {
        return clothingAllowance;
    }

    public void setClothingAllowance(double clothingAllowance) {
        this.clothingAllowance = doubleToBigDecimalConverter(clothingAllowance);
    }

    public BigDecimal getGrossSemiMonthlyRate() {
        return grossSemiMonthlyRate;
    }

    public void setGrossSemiMonthlyRate(double grossSemiMonthlyRate) {
        this.grossSemiMonthlyRate = doubleToBigDecimalConverter(grossSemiMonthlyRate);
    }

    public BigDecimal getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = doubleToBigDecimalConverter(hourlyRate);
    }
}

