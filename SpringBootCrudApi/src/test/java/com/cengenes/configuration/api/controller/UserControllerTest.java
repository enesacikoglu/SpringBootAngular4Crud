package com.cengenes.configuration.api.controller;

import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class UserControllerTest extends AbstractTest {
    private String uri = "/api/user/checkLogin";

    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void authorizationHeaderIsMissing() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(400, status);
    }

    @Test
    public void incorrectAuthorizationHeader() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "asd:asd")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(401, status);
    }

    @Test
    public void correctAuthorizationHeader() throws Exception {
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(this.uri).header("Authorization", "demo:demo")).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
    }
}