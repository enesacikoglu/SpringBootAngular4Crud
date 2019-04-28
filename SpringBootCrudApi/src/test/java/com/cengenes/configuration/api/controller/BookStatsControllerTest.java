package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.book.BookResponse;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class BookStatsControllerTest extends AbstractTest{

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getProductStatsByQuantity_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        String uri = "/api/book-stats-by-quantity";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getProductStatsByQuantity_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        String uri = "/api/book-stats-by-quantity";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "asd:asd")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getProductStatsByQuantity_withCorrectAuthorizationHeader_shouldNotReturnEmptyList() throws Exception{
        String uri = "/api/book-stats-by-quantity";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        BookResponse bookResponse = super.mapFromJson(content, BookResponse.class);
        assertFalse(bookResponse.getItems().isEmpty());
    }
}