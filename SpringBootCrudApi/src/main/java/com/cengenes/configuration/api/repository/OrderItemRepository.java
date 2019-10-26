package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.order.OrderItem;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
    List<OrderItem> findAll();
    Page<OrderItem> findAll(Pageable p);
}
