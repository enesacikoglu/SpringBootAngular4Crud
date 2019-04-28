package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.book.Book;
import com.cengenes.configuration.api.entity.book.BookResponse;
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

public class BookControllerTest extends AbstractTest {
    private String uri = "/api/books";

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getProductsByPage_WithoutAuthorizationHeader_shouldReturnHTTP400() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getProductsByPage_WithoutRequestParams_shouldReturnANonEmptyListOfProducts() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode listNode = jsonNode.get("items");
        Book[] books = super.mapFromJson(listNode.toString(), Book[].class);
        assertTrue(books.length > 0);
    }

    @Test
    public void getProductsByPage_withPageRequestParam_shouldReturnCorrectPage() throws Exception {
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
    public void getProductsByPage_withSizeRequestParam_shouldReturnCorrectSize() throws Exception {
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
    public void getProductsByPage_withRequestParams_shouldReturnANonEmptyListOfProducts() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(content);
        JsonNode listNode = jsonNode.get("items");
        Book[] books = super.mapFromJson(listNode.toString(), Book[].class);
        assertTrue(books.length > 0);
    }

    @Test
    public void addNewProduct_withCorrectAuthorizationHeaderAndExistingProduct_shouldReturnErrorOperationResponse() throws Exception{
        Book book = new Book();
        book.setId(602);
        book.setBookName("asd");
        book.setListPrice(6.5);
        book.setDiscontinued(0);
        String inputJson = super.mapToJson(book);
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
    public void addNewProduct_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        Book book = new Book();
        book.setId(1);
        book.setBookName("asd");
        book.setListPrice(6.5);
        book.setDiscontinued(0);
        String inputJson = super.mapToJson(book);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void addNewProduct_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        Book book = new Book();
        book.setId(1);
        book.setBookName("asd");
        book.setListPrice(6.5);
        book.setDiscontinued(0);
        String inputJson = super.mapToJson(book);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .header("Authorization", "asd:asd")
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void addNewProduct_withCorrectAuthorizationHeaderAndNonExistingProduct_shouldReturnSuccessOperationResponse() throws Exception{
        Book book = new Book();
        book.setId(1);
        book.setBookName("asd");
        book.setListPrice(6.5);
        book.setDiscontinued(0);
        String inputJson = super.mapToJson(book);
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
    public void deleteProduct_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/601")).andReturn();
        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void deleteProduct_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/601").header("Authorization", "asd:asd")).andReturn();
        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void deleteProduct_withCorrectAuthorizationHeader_shouldReturnSuccessOperationResponse() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri+"/601").header("Authorization", "demo:demo")).andReturn();
        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        OperationResponse operationResponse = super.mapFromJson(content, OperationResponse.class);
        assertEquals("SUCCESS", operationResponse.getOperationStatus().toString());
    }
}