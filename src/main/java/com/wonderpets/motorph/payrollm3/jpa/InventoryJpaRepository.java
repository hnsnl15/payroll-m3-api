package com.wonderpets.motorph.payrollm3.jpa;

import com.wonderpets.motorph.payrollm3.model.Inventory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface InventoryJpaRepository extends JpaRepository<Inventory, Long> {
    Optional<Inventory> findByEngineNumber(String engineNumber);
}
