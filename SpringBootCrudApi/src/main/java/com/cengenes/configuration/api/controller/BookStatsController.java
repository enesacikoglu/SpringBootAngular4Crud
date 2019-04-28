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
public class BookStatsController {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private AuthService authService;

    @RequestMapping(value = "/book-stats-by-quantity", method = RequestMethod.GET)
    public SingleDataSeriesResponse getProductStatsByQuantity(@RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        SingleDataSeriesResponse resp = new SingleDataSeriesResponse();
        if (response.getStatus() == 200) {
            String sql = "select book_name as name, sum(quantity) as value from A_TEAM.order_details group by book_name ";
            SingleSeries singleSerise;

            ArrayList<SingleSeries> dataItemList = new ArrayList<>();

            List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);

            for (Map<String, Object> row : list) {
                singleSerise = new SingleSeries((String) row.get("name"), (BigDecimal) row.get("value"));
                dataItemList.add(singleSerise);
            }
            resp.setItems(dataItemList);
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
            resp.setOperationMessage("Orders by Quantity Ordered");
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }
        return resp;
    }
}
