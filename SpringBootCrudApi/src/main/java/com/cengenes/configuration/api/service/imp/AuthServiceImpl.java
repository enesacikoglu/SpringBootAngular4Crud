package com.cengenes.configuration.api.service.imp;

import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.entity.user.User;
import com.cengenes.configuration.api.repository.UserRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.Optional;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void authenticate(String authHeader, HttpServletResponse response) {
        String[] parts = authHeader.split(":");
        String username = parts[0];
        String password = parts[1];
        Optional<User> user = userRepository.findOneByUserIdAndPassword(username, password);
        if(user.isPresent()){
            response.setStatus(200);
        } else {
            response.setStatus(401);
        }
    }
}
