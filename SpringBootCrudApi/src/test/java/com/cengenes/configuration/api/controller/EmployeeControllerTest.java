package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.employee.Employee;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class EmployeeControllerTest extends AbstractTest{
    private String uri = "/api/employees";

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getEmployeesByPage_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getEmployeesByPage_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getEmployeesByPage_withCorrectAuthorizationHeader_shouldNotReturnAnEmptyListOfCustomers() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode listNode = jsonNode.get("items");
        Employee[] employees = super.mapFromJson(listNode.toString(), Employee[].class);
        assertTrue(employees.length > 0);
    }

    @Test
    public void getEmployeesByPage_withPageRequestParam_shouldReturnCorrectPage() throws Exception {
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
    public void getEmployeesByPage_withSizeRequestParam_shouldReturnCorrectSize() throws Exception {
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
    public void addNewEmployee_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void addNewEmployee_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        Employee employee = new Employee();
        employee.setId(200);
        String inputJson = mapToJson(employee);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(this.uri)
                .header("Authorization", "asd:asd")
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void addNewEmployee_withCorrectAuthorizationHeader_shouldNotSucceed() throws Exception {
        Employee employee = new Employee();
        employee.setId(201);
        employee.setFirstName("test");
        String inputJson = super.mapToJson(employee);
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
    public void addNewEmployee_withCorrectAuthorizationHeader_shouldSucceed() throws Exception {
        Employee employee = new Employee();
        employee.setId(200);
        employee.setFirstName("test");
        String inputJson = super.mapToJson(employee);
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
    public void deleteEmployee_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/200")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void deleteEmployee_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(this.uri+"/201").header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void deleteEmployee_withCorrectAuthorizationHeader_shouldNotSucceed() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/200")
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("ERROR", operationResponse.getOperationStatus().toString());
    }

    @Test
    public void deleteEmployee_withCorrectAuthorizationHeader_shouldSucceed() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/201")
                .header("Authorization", "demo:demo")
                .contentType(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("SUCCESS", operationResponse.getOperationStatus().toString());
    }
}