package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.repository.UserRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/api/user")
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AuthService authService;

    @GetMapping(value = "/checkLogin")
    public OperationResponse checkLogin(@RequestHeader(value="authorization") String authorization, HttpServletResponse response){
        OperationResponse opResponse = new OperationResponse();
        authService.authenticate(authorization, response);
        if(response.getStatus() == 200){
            opResponse.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
            opResponse.setOperationMessage("Success");
        } else if(response.getStatus() == 401){
            opResponse.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            opResponse.setOperationMessage("No Access");
        }
        return opResponse;
    }
}
