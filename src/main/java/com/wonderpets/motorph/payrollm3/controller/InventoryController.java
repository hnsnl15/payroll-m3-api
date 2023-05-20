package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Inventory;
import com.wonderpets.motorph.payrollm3.service.InventoryService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class InventoryController {

    private final InventoryService inventoryService;

    public InventoryController(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }

    @GetMapping("/v1/inventory")
    public List<Inventory> retrieveAllStock() {
        return this.inventoryService.retrieveAllStock();
    }

    @GetMapping("/v1/inventory/{engineNumber}")
    public void retrieveStockByEngineNumber() {
    }

    @GetMapping("/v2/inventory")
    public void retrieveStockByPagination() {
    }

    @PostMapping("/v1/inventory/create-stock")
    public ResponseEntity<Void> createStock(@Valid @RequestBody Inventory inventory) {
        return this.inventoryService.createStock(inventory);
    }

    @PutMapping("/v1/inventory")
    public void updateStock() {
    }

    @DeleteMapping("/v1/inventory")
    public void deleteStock() {
    }

}
