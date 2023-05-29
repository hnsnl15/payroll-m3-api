package com.wonderpets.motorph.payrollm3.controller;

import com.wonderpets.motorph.payrollm3.model.Inventory;
import com.wonderpets.motorph.payrollm3.service.InventoryService;
import jakarta.validation.Valid;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/api")
public class InventoryController {

    private final InventoryService inventoryService;

    public InventoryController(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }

    private List<EntityModel<Inventory>> wrapListOfInventoryIntoEntityModels(List<Inventory> inventoryList) {
        List<EntityModel<Inventory>> stockEntityModels = new ArrayList<>();
        for (Inventory stock : inventoryList) {
            EntityModel<Inventory> stockEntityModel = EntityModel.of(stock);
            WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                    .retrieveStockById(stock.getId()));
            stockEntityModel.add(linkBuilder.withSelfRel());
            stockEntityModels.add(stockEntityModel);
        }
        return stockEntityModels;
    }

    @GetMapping("/v1/inventory")
    public List<EntityModel<Inventory>> retrieveAllStock() {
        return wrapListOfInventoryIntoEntityModels(this.inventoryService.retrieveAllStock());
    }

    @GetMapping("/v1/inventory/{id}")
    public EntityModel<Optional<Inventory>> retrieveStockById(@PathVariable long id) {
        Optional<Inventory> stock = this.inventoryService.retrieveStockById(id);
        EntityModel<Optional<Inventory>> stockEntityModel = EntityModel.of(stock);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                .retrieveAllStock());
        stockEntityModel.add(linkBuilder.withRel("all-stock"));
        return stockEntityModel;
    }

    @GetMapping("/v2/inventory")
    public List<EntityModel<Inventory>> retrieveStockByPagination(@RequestParam(defaultValue = "0") int page,
                                                                  @RequestParam(defaultValue = "5") int size
    ) {
        return wrapListOfInventoryIntoEntityModels(this.inventoryService.retrieveStocksPageable(page, size));
    }

    @PostMapping("/v1/inventory/create-stock")
    public ResponseEntity<Void> createStock(@Valid @RequestBody Inventory inventory) {
        return this.inventoryService.createStock(inventory);
    }

    @PutMapping("/v1/inventory/{id}")
    public ResponseEntity<Void> updateStock(@PathVariable long id, @RequestBody Inventory stock) {
        return this.inventoryService.updateStock(id, stock);
    }

    @DeleteMapping("/v1/inventory/{id}")
    public ResponseEntity<Void> deleteStock(@PathVariable long id) {
        return this.inventoryService.deleteStock(id);
    }

}
