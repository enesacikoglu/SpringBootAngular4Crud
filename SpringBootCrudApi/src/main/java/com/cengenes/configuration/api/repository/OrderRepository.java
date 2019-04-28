package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.order.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findAll();
    Page<Order> findAll(Pageable p);
}