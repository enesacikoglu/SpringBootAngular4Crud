package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.customer.Customer;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;


import static org.junit.Assert.*;

public class CustomerControllerTest extends AbstractTest{
    private String uri = "/api/customers";

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getCustomersByPage_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getCustomersByPage_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getCustomersByPage_withCorrectAuthorizationHeader_shouldNotReturnAnEmptyListOfCustomers() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode listNode = jsonNode.get("items");
        Customer[] customers = super.mapFromJson(listNode.toString(), Customer[].class);
        assertTrue(customers.length > 0);
    }

    @Test
    public void getCustomersByPage_withPageRequestParam_shouldReturnCorrectPage() throws Exception {
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
    public void getCustomersByPage_withSizeRequestParam_shouldReturnCorrectSize() throws Exception {
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
    public void addNewCustomer_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void addNewCustomer_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void addNewCustomer_withCorrectAuthorizationHeader_shouldNotSucceed() throws Exception {
        Customer customer = new Customer();
        customer.setId(1);
        customer.setFirstName("test");
        String inputJson = super.mapToJson(customer);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("ERROR", operationResponse.getOperationStatus().toString());
    }

    @Test
    public void addNewCustomer_withCorrectAuthorizationHeader_shouldSucceed() throws Exception {
        Customer customer = new Customer();
        customer.setId(0);
        customer.setFirstName("test");
        String inputJson = super.mapToJson(customer);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("SUCCESS", operationResponse.getOperationStatus().toString());
    }

    @Test
    public void deleteCustomer_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/1")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void deleteCustomer_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void deleteCustomer_withCorrectAuthorizationHeader_shouldNotSucceed() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/0")
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("ERROR", operationResponse.getOperationStatus().toString());
    }

    @Test
    public void deleteCustomer_withCorrectAuthorizationHeader_shouldSucceed() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/1")
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("SUCCESS", operationResponse.getOperationStatus().toString());
    }
}