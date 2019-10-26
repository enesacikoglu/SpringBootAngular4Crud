package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.order.OrderInfo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderInfoRepository extends JpaRepository<OrderInfo, Long> {
    List<OrderInfo> findAll();
    Page<OrderInfo> findAll(Pageable p);
}