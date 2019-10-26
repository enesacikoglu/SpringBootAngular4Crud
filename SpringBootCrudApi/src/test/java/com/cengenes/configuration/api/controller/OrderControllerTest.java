package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.order.OrderDetailResponse;
import com.cengenes.configuration.api.entity.order.OrderInfo;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class OrderControllerTest extends AbstractTest{

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getOrdersByPage_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getOrdersByPage_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "asd:asd")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getOrdersByPage_withCorrectAuthorizationHeader_shouldNotReturnAnEmptyListOfOrders() throws Exception{
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode listNode = jsonNode.get("items");
        OrderInfo[] orders = super.mapFromJson(listNode.toString(), OrderInfo[].class);
        assertTrue(orders.length > 0);
    }

    @Test
    public void getOrdersByPage_withPageRequestParam_shouldReturnCorrectPage() throws Exception {
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .param("page", "2")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode pageNode = jsonNode.get("currentPageNumber");
        assertEquals("2", pageNode.toString());
    }

    @Test
    public void getOrdersByPage_withSizeRequestParam_shouldReturnCorrectSize() throws Exception {
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .param("size", "30")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode sizeNode = jsonNode.get("pageSize");
        assertEquals("30", sizeNode.toString());
    }


    @Test
    public void getOrderDetail_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getOrderDetail_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        String uri = "/api/orders";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "asd:asd")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getOrderDetail_withCorrectAuthorizationHeader_shouldNotReturnAnEmptyListOfOrders() throws Exception{
        String uri = "/api/order-details";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OrderDetailResponse orderDetailResponse = super.mapFromJson(content, OrderDetailResponse.class);
        assertFalse(orderDetailResponse.getItems().isEmpty());
    }
}