package com.wonderpets.motorph.payrollm3.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Inventory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String dateEntered;
    private String stockLabel;
    private String brand;
    private String engineNumber;
    private String status;

    public Inventory() {
    }

    public Inventory(String dateEntered, String stockLabel, String brand, String engineNumber, String status) {
        this.dateEntered = dateEntered;
        this.stockLabel = stockLabel;
        this.brand = brand;
        this.engineNumber = engineNumber;
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public String getDateEntered() {
        return dateEntered;
    }

    public void setDateEntered(String dateEntered) {
        this.dateEntered = dateEntered;
    }

    public String getStockLabel() {
        return stockLabel;
    }

    public void setStockLabel(String stockLabel) {
        this.stockLabel = stockLabel;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getEngineNumber() {
        return engineNumber;
    }

    public void setEngineNumber(String engineNumber) {
        this.engineNumber = engineNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
