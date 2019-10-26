package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.order.OrderDetail;
import com.cengenes.configuration.api.entity.order.OrderDetailResponse;
import com.cengenes.configuration.api.entity.order.OrderInfo;
import com.cengenes.configuration.api.entity.order.OrderInfoResponse;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.repository.OrderInfoRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class OrderController {

    @Autowired
    private OrderInfoRepository orderInfoRepository;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private AuthService authService;

    @GetMapping(value = "/orders")
    public OrderInfoResponse getOrdersByPage(
            @RequestParam(value = "page", defaultValue = "0", required = false) Integer page,
            @RequestParam(value = "size", defaultValue = "20", required = false) Integer size,
            @RequestParam(value = "orderid", required = false) Integer orderId,
            @RequestParam(value = "customerid", required = false) Integer customerId,
            @RequestParam(value = "employeeid", required = false) Integer employeeId,
            @RequestParam(value = "status", required = false) String orderStatus,
            @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response,
            Pageable pageable
    ) {
        authService.authenticate(authorization, response);
        OrderInfoResponse resp = new OrderInfoResponse();
        if (response.getStatus() == 200) {
            OrderInfo qry = new OrderInfo();
            if (orderId != null) {
                qry.setOrderId(orderId);
            }
            if (customerId != null) {
                qry.setCustomerId(customerId);
            }
            if (employeeId != null) {
                qry.setEmployeeId(employeeId);
            }
            if (orderStatus != null) {
                qry.setOrderStatus(orderStatus);
            }

            Page<OrderInfo> pg = orderInfoRepository.findAll(org.springframework.data.domain.Example.of(qry), pageable);
            resp.setPageStats(pg, true);
            resp.setItems(pg.getContent());
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }


    @GetMapping(value = "/order-details")
    public OrderDetailResponse getOrderDetail(@RequestParam(value = "orderid", required = false) Integer orderId, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OrderDetailResponse resp = new OrderDetailResponse();
        if(response.getStatus() == 200){
            long prevOrderId = -1, newOrderId;
            OrderDetail orderDetail = new OrderDetail();
            int itemCount = 0;


            resp.setItems(new ArrayList<OrderDetail>());
            String sql = " select order_id, book_id   , customer_id   , order_date, order_status  , shipped_date    , employee_id , payment_type, paid_date, "
                    + " ship_name      , ship_address1, ship_address2 , ship_city , ship_state    , ship_postal_code, ship_country, "
                    + " book_code   , book_name , category      , quantity  , unit_price    , discount        , date_allocated, order_item_status, "
                    + " shipping_fee   , customer_name, customer_email, customer_company from A_TEAM.ORDER_DETAILS ";
            String where = " where 1 = 1 ";
            String order = " order by order_id, book_id ";
            if (orderId != null) {
                where = where + " and order_id = " + orderId;
            }

            List<Map<String, Object>> list = jdbcTemplate.queryForList(sql + where + order);
            for (Map<String, Object> row : list) {
                newOrderId = (int) row.get("order_id");
                if (prevOrderId != newOrderId) {
                    itemCount++;

                    orderDetail = new OrderDetail(
                            (int) row.get("order_id"),
                            (Date) row.get("order_date"),
                            (String) row.get("order_status"),
                            (Date) row.get("shipped_date"),
                            (String) row.get("ship_name"),
                            (String) row.get("ship_address1"),
                            (String) row.get("ship_address2"),
                            (String) row.get("ship_city"),
                            (String) row.get("ship_state"),
                            (String) row.get("ship_postal_code"),
                            (String) row.get("ship_country"),
                            (BigDecimal) row.get("shipping_fee"),
                            (Integer) row.get("customer_id"),
                            (String) row.get("customer_name"),
                            (String) row.get("customer_email"),
                            (String) row.get("company"),
                            (String) row.get("payment_type"),
                            (Date) row.get("paid_date"),
                            (int) row.get("employee_id")
                    );
                    orderDetail.addOrderLine(
                            (int) row.get("book_id"),
                            (String) row.get("book_code"),
                            (String) row.get("book_name"),
                            (String) row.get("category"),
                            (BigDecimal) row.get("quantity"),
                            (BigDecimal) row.get("unit_price"),
                            (BigDecimal) row.get("discount"),
                            (Date) row.get("date_allocated"),
                            (String) row.get("order_item_status")
                    );
                    resp.getItems().add(orderDetail);
                    prevOrderId = newOrderId;
                } else {
                    orderDetail.addOrderLine(
                            (int) row.get("book_id"),
                            (String) row.get("book_code"),
                            (String) row.get("book_name"),
                            (String) row.get("category"),
                            (BigDecimal) row.get("quantity"),
                            (BigDecimal) row.get("unit_price"),
                            (BigDecimal) row.get("discount"),
                            (Date) row.get("date_allocated"),
                            (String) row.get("order_item_status")
                    );
                }
            }
            resp.setPageTotal(itemCount, true);
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }

}
