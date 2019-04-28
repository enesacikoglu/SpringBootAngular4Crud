package com.cengenes.configuration.api.service;

import javax.servlet.http.HttpServletResponse;

public interface AuthService {
    void authenticate(String authHeader, HttpServletResponse response);
}
