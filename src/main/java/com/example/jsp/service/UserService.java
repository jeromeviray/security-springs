package com.example.jsp.service;


import com.example.jsp.model.Role;
import com.example.jsp.model.User;
import com.example.jsp.repository.RoleRepository;
import com.example.jsp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService{
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    public void saveUser(User user){

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        Role role = roleRepository.findByAuthority("USER");
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRole(roles);

        userRepo.save(user);
    }
    public boolean isUsernameExisted(String username){
        if (userRepo.findByUsername(username) == null) {
            return false;
        }
        return true;
    }

}
