package com.wonderpets.motorph.payrollm3.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class InventoryController {

    @GetMapping("/v1/inventory")
    public void retrieveAllStock() {
    }

    @GetMapping("/v1/inventory/{engineNumber}")
    public void retrieveStockByEngineNumber() {
    }

    @GetMapping("/v2/inventory")
    public void retrieveStockByPagination() {
    }

    @PostMapping("/v1/inventory")
    public void createStock() {
    }

    @PutMapping("/v1/inventory")
    public void updateStock() {
    }

    @DeleteMapping("/v1/inventory")
    public void deleteStock() {
    }

}
