package com.wonderpets.motorph.payrollm3.model;

import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import jakarta.validation.constraints.Size;

@MappedSuperclass
public class Person {

    @Id
    @Column(name = "emp_no")
    private long id;
    private String role;
    private String username;

    @Size(min = 8, message = "Password cannot be less than 8 characters.")
    private String password;

    public Person(long id, String role, String username, String password) {
        this.id = id;
        this.role = role(role);
        this.username = username;
        this.password = password;
    }

    public Person() {
    }

    private String role(String role) {
        Role userRole;
        try {
            userRole = Role.valueOf(role);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Invalid user role value");
        }
        return userRole.toString();
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUserRole() {
        return role;
    }

    public void setUserRole(String role) {
        this.role = role(role);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
