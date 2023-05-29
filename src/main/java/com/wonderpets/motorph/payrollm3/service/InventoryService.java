package com.wonderpets.motorph.payrollm3.service;

import com.wonderpets.motorph.payrollm3.exception.StockEngineNumberAlreadyUsed;
import com.wonderpets.motorph.payrollm3.exception.StockNotFoundException;
import com.wonderpets.motorph.payrollm3.jpa.InventoryJpaRepository;
import com.wonderpets.motorph.payrollm3.model.Inventory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class InventoryService {

    private final InventoryJpaRepository inventoryJpaRepository;

    public InventoryService(InventoryJpaRepository inventoryJpaRepository) {
        this.inventoryJpaRepository = inventoryJpaRepository;
    }


    public ResponseEntity<Void> createStock(Inventory inventory) {
        if (inventoryJpaRepository.findById(inventory.getId()).isPresent()) {
            throw new StockEngineNumberAlreadyUsed("Stock engine number is already in the record.");
        }
        Inventory createdStock = this.inventoryJpaRepository.save(inventory);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdStock.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    public List<Inventory> retrieveAllStock() {
        List<Inventory> inventoryList = this.inventoryJpaRepository.findAll();
        if (inventoryList.isEmpty()) throw new StockNotFoundException("List is not available");
        return inventoryList;
    }

    public List<Inventory> retrieveStocksPageable(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Inventory> inventoryPage = this.inventoryJpaRepository.findAll(pageable);
        if (inventoryPage.isEmpty()) return Collections.emptyList();
        return inventoryPage.getContent();
    }

    public Optional<Inventory> retrieveStockById(long id) {
        Optional<Inventory> stock = this.inventoryJpaRepository.findById(id);
        if (stock.isEmpty()) throw new StockNotFoundException("Stock is not in the record.");
        return stock;
    }

    public List<Inventory> retrieveStocksByEngineNumberPageable(int page, int size, String engineNumber) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Inventory> inventoryPage = retrieveStocksByEngineNumber(engineNumber, pageable);
        if (inventoryPage.isEmpty()) return Collections.emptyList();
        return inventoryPage.getContent();
    }

    private Page<Inventory> retrieveStocksByEngineNumber(String engineNumber, Pageable pageable) {
        return this.inventoryJpaRepository.findByEngineNumber(engineNumber)
                .map(stock -> inventoryJpaRepository.findAllByEngineNumber(stock.getEngineNumber(), pageable))
                .orElse(Page.empty());
    }

    public ResponseEntity<Void> updateStock(long id, Inventory stock) {
        Optional<Inventory> optionalStock = this.inventoryJpaRepository.findById(id);
        if (optionalStock.isEmpty())
            throw new StockNotFoundException("Stock is not in the record.");
        Inventory updateStock = optionalStock.get();
        updateStock.setDateEntered(stock.getDateEntered());
        updateStock.setStockLabel(stock.getStockLabel());
        updateStock.setStatus(stock.getStatus());
        updateStock.setEngineNumber(stock.getEngineNumber());
        updateStock.setBrand(stock.getBrand());
        this.inventoryJpaRepository.save(updateStock);
        return ResponseEntity.ok().build();
    }

    public ResponseEntity<Void> deleteStock(long id) {
        if (this.inventoryJpaRepository.findById(id).isEmpty())
            throw new StockNotFoundException("Unable to delete, no stock found!");
        this.inventoryJpaRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

}
