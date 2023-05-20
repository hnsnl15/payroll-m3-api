package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.StockEngineNumberAlreadyUsed;
import com.wonderpets.motorph.payrollm3.jpa.InventoryJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Inventory;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;

@Service
@Transactional
public class InventoryService {

    private final InventoryJpaRepository inventoryJpaRepository;

    public InventoryService(InventoryJpaRepository inventoryJpaRepository) {
        this.inventoryJpaRepository = inventoryJpaRepository;
    }


    public ResponseEntity<Void> createStock(@Valid @RequestBody Inventory inventory) {
        if (inventoryJpaRepository.findByEngineNumber(inventory.getEngineNumber()).isPresent()) {
            throw new StockEngineNumberAlreadyUsed("Stock engine number is already in the record.");
        }
        Inventory createdStock = this.inventoryJpaRepository.save(inventory);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdStock.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    public void retrieveAllStock() {
    }

    public void retrieveStockByEngineNumber() {
    }

    public void retrieveStocksByPagination() {
    }

    public void updateStock() {
    }

    public void deleteStock() {
    }

}
