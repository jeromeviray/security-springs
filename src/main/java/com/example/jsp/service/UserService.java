package com.example.jsp.service;


import com.example.jsp.model.Role;
import com.example.jsp.model.User;
import com.example.jsp.repository.RoleRepository;
import com.example.jsp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService{
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private RoleRepository roleRepository;

    public void saveUser(User user){
        Role role = roleRepository.findByAuthority("user");
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRole(roles);
        userRepo.save(user);
    }

}
