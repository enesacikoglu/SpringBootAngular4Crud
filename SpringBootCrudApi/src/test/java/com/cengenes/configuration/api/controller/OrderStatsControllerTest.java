package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.response.SingleDataSeriesResponse;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class OrderStatsControllerTest extends AbstractTest{
    private String uri = "/api/order-stats";

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void getOrderStats_withoutAuthorizationHeader_shouldReturnHTTP400() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void getOrderStats_withIncorrectAuthorizationHeader_shouldReturnHTTP401() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri+"?type=status")
                .header("Authorization", "asd:asd")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void getOrderStats_withCorrectAuthorizationHeader_shouldReturnANotEmptyListOfOrder() throws Exception{
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri+"?type=status")
                .header("Authorization", "demo:demo")
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        SingleDataSeriesResponse singleDataSeriesResponse = super.mapFromJson(content, SingleDataSeriesResponse.class);
        assertFalse(singleDataSeriesResponse.getItems().isEmpty());
    }
}