package com.cengenes.configuration.api.entity.order;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "order_items")
public class OrderItem {

    @EmbeddedId
    @AttributeOverrides({
            @AttributeOverride(name = "orderId", column = @Column(name = "order_id")),
            @AttributeOverride(name = "productId", column = @Column(name = "product_id"))
    })
    CompositeOrderProductKey orderItemKey;
    private BigDecimal quantity;
    private BigDecimal unitPrice;
    private BigDecimal discount;
    private String orderItemStatus;
    private Date dateAllocated;

    public OrderItem() {
    }

    public OrderItem(int orderId, int productId, BigDecimal quantity, BigDecimal unitPrice, BigDecimal discount, String orderItemStatus, Date dateAllocated) {
        this(new CompositeOrderProductKey(orderId, productId), quantity, unitPrice, discount, orderItemStatus, dateAllocated);
    }

    public OrderItem(CompositeOrderProductKey orderItemKey, BigDecimal quantity, BigDecimal unitPrice, BigDecimal discount, String orderItemStatus, Date dateAllocated) {
        this.orderItemKey = orderItemKey;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.discount = discount;
        this.dateAllocated = dateAllocated;
        this.orderItemStatus = orderItemStatus;
    }

    public CompositeOrderProductKey getOrderItemKey() {
        return orderItemKey;
    }

    public void setOrderItemKey(CompositeOrderProductKey orderItemKey) {
        this.orderItemKey = orderItemKey;
    }

    public BigDecimal getQuantity() {
        return quantity;
    }

    public void setQuantity(BigDecimal quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getDiscount() {
        return discount;
    }

    public void setDiscount(BigDecimal discount) {
        this.discount = discount;
    }

    public String getOrderItemStatus() {
        return orderItemStatus;
    }

    public void setOrderItemStatus(String orderItemStatus) {
        this.orderItemStatus = orderItemStatus;
    }

    public Date getDateAllocated() {
        return dateAllocated;
    }

    public void setDateAllocated(Date dateAllocated) {
        this.dateAllocated = dateAllocated;
    }
}
