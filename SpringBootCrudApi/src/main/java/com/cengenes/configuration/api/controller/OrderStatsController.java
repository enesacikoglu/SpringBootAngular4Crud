package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.data.SingleSeries;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.entity.response.SingleDataSeriesResponse;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class OrderStatsController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private AuthService authService;

    @GetMapping(value = "/order-stats")
    public SingleDataSeriesResponse getOrderStats(@RequestParam(value = "type") String type, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response ) {
        authService.authenticate(authorization, response);
        SingleDataSeriesResponse resp = new SingleDataSeriesResponse();
        if(response.getStatus() == 200){
            String fieldName = "";
            if (type.equalsIgnoreCase("status") || type.equalsIgnoreCase("order_status")){
                fieldName = " order_status ";
            }
            else if (type.equalsIgnoreCase("paytype") || type.equalsIgnoreCase("payment_type")){
                fieldName = " payment_type ";
            }
            else if (type.equalsIgnoreCase("country") || type.equalsIgnoreCase("ship_country")){
                fieldName = " ship_country ";
            }
            else{
                fieldName = " order_status ";
            }

            String sql = "select count(*) as value, " + fieldName + " as name from A_TEAM.ORDERS group by " + fieldName;
            String countType = new String();
            long count;
            SingleSeries singleSerise;
            ArrayList<SingleSeries> dataItemList = new ArrayList<SingleSeries>();


            List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);

            for (Map<String, Object> row : list) {
                singleSerise = new SingleSeries((String)row.get("name"), new BigDecimal((long)row.get("value")) );
                dataItemList.add(singleSerise);
            }
            resp.setItems(dataItemList);
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
            resp.setOperationMessage("Orders by " + fieldName);
            //resp.setItems(singleSerise);
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }


}