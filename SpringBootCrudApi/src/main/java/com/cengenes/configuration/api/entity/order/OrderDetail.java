package com.cengenes.configuration.api.entity.order;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDetail extends Order {

    private String customerName;
    private String customerEmail;
    private String customerCompany;
    private List<OrderLine> orderLine;

    public OrderDetail(){}

    public OrderDetail(
            Integer orderId,
            Date orderDate,
            String orderStatus,
            Date   shippedDate,
            String shipName,
            String shipAddress1,
            String shipAddress2 ,
            String shipCity,
            String shipState,
            String shipPostalCode,
            String shipCountry,
            BigDecimal shippingFee,
            Integer customerId,
            String customerName,
            String customerEmail,
            String customerCompany,
            String paymentType,
            Date paidDate,
            Integer employeeId
    ){
        super(orderId, employeeId, customerId, orderDate, orderStatus, shippedDate ,shipName, shipAddress1,shipAddress2, shipCity, shipState, shipPostalCode, shipCountry, shippingFee, paymentType, paidDate);
        this.customerName = customerName;
        this.customerEmail     = customerEmail;
        this.customerCompany   = customerCompany;
        this.orderLine         = new ArrayList<OrderLine>();
    }

    public void addOrderLine(int productId, String productCode, String productName, String category, BigDecimal quantity, BigDecimal unitPrice, BigDecimal discount, Date dateAllocated, String orderItemStatus){
        OrderLine line = new OrderLine(productId, productCode, productName, category, quantity, unitPrice, discount, dateAllocated, orderItemStatus);
        this.orderLine.add(line);
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerCompany() {
        return customerCompany;
    }

    public void setCustomerCompany(String customerCompany) {
        this.customerCompany = customerCompany;
    }

    public List<OrderLine> getOrderLine() {
        return orderLine;
    }

    public void setOrderLine(List<OrderLine> orderLine) {
        this.orderLine = orderLine;
    }
}


class OrderLine  {

    private int        productId;
    private String     productCode;
    private String     productName;
    private String     category;
    private BigDecimal quantity;
    private BigDecimal unitPrice;
    private BigDecimal discount;
    private Date       dateAllocated;
    private String orderItemStatus;


    public OrderLine(int productId, String productCode, String productName, String category, BigDecimal quantity, BigDecimal unitPrice, BigDecimal discount, Date dateAllocated, String orderItemStatus){
        this.productId    = productId;
        this.productCode  = productCode;
        this.productName  = productName;
        this.category     = category;
        this.quantity     = quantity;
        this.unitPrice    = unitPrice;
        this.discount     = discount;
        this.dateAllocated= dateAllocated;
        this.orderItemStatus=orderItemStatus;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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

    public Date getDateAllocated() {
        return dateAllocated;
    }

    public void setDateAllocated(Date dateAllocated) {
        this.dateAllocated = dateAllocated;
    }

    public String getOrderItemStatus() {
        return orderItemStatus;
    }

    public void setOrderItemStatus(String orderItemStatus) {
        this.orderItemStatus = orderItemStatus;
    }
}