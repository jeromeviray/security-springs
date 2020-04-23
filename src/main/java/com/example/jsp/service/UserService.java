package com.example.jsp.service;


import com.example.jsp.model.User;
import com.example.jsp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService{
    @Autowired
    private UserRepository userRepo;

    public void saveUser(User user){
        userRepo.save(user);
    }
}
