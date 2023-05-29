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

    /**
     * Constructor for the InventoryController class.
     *
     * @param inventoryService The inventory service used for handling inventory operations.
     */
    public InventoryController(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }

    /**
     * Wraps a list of inventory items into EntityModels and adds self links to each item.
     *
     * @param inventoryList The list of inventory items to wrap.
     * @return The list of EntityModels representing the inventory items with self links.
     */
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

    /**
     * Retrieves all inventory items.
     *
     * @return The list of EntityModels representing all inventory items.
     */
    @GetMapping("/v1/inventory")
    public List<EntityModel<Inventory>> retrieveAllStock() {
        return wrapListOfInventoryIntoEntityModels(this.inventoryService.retrieveAllStock());
    }

    /**
     * Retrieves an inventory item by its ID.
     *
     * @param id The ID of the inventory item to retrieve.
     * @return The EntityModel representing the retrieved inventory item with a link to all stock.
     */
    @GetMapping("/v1/inventory/{id}")
    public EntityModel<Optional<Inventory>> retrieveStockById(@PathVariable long id) {
        Optional<Inventory> stock = this.inventoryService.retrieveStockById(id);
        EntityModel<Optional<Inventory>> stockEntityModel = EntityModel.of(stock);
        WebMvcLinkBuilder linkBuilder = linkTo(methodOn(this.getClass())
                .retrieveAllStock());
        stockEntityModel.add(linkBuilder.withRel("all-stock"));
        return stockEntityModel;
    }

    /**
     * Retrieves inventory items with pagination.
     *
     * @param page The page number.
     * @param size The number of items per page.
     * @return The list of EntityModels representing the paginated inventory items.
     */
    @GetMapping("/v2/inventory")
    public List<EntityModel<Inventory>> retrieveStockByPagination(@RequestParam(defaultValue = "0") int page,
                                                                  @RequestParam(defaultValue = "5") int size
    ) {
        return wrapListOfInventoryIntoEntityModels(this.inventoryService.retrieveStocksPageable(page, size));
    }

    /**
     * Creates a new inventory item.
     *
     * @param inventory The inventory item to create.
     * @return The ResponseEntity indicating the success or failure of the operation.
     */
    @PostMapping("/v1/inventory/create-stock")
    public ResponseEntity<Void> createStock(@Valid @RequestBody Inventory inventory) {
        return this.inventoryService.createStock(inventory);
    }

    /**
     * Updates an existing inventory item.
     *
     * @param id    The ID of the inventory item to update.
     * @param stock The updated inventory item.
     * @return The ResponseEntity indicating the success or failure of the operation.
     */
    @PutMapping("/v1/inventory/{id}")
    public ResponseEntity<Void> updateStock(@PathVariable long id, @RequestBody Inventory stock) {
        return this.inventoryService.updateStock(id, stock);
    }

    /**
     * Deletes an inventory item by its ID.
     *
     * @param id The ID of the inventory item to delete.
     * @return The ResponseEntity indicating the success or failure of the operation.
     */
    @DeleteMapping("/v1/inventory/{id}")
    public ResponseEntity<Void> deleteStock(@PathVariable long id) {
        return this.inventoryService.deleteStock(id);
    }
}
