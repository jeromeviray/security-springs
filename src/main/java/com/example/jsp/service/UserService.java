package com.example.jsp.service;


import com.example.jsp.model.Role;
import com.example.jsp.model.User;
import com.example.jsp.model.change.ChangePassword;
import com.example.jsp.repository.RoleRepository;
import com.example.jsp.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    Logger logger = LoggerFactory.getLogger(UserService.class);


    public void saveUser(User user){

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        Role role = roleRepository.findByAuthority("USER");
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRole(roles);

        userRepository.save(user);
    }
    public boolean isUsernameAlreadyExisted(String username){
        if (userRepository.findByUsername(username) == null){
            return false;
        }
        return true;
    }
    public String changePassword(ChangePassword changePassword){
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User users = userRepository.findByUsername(username);
        logger.info(String.valueOf("current logging: User Id = "+users.getId()));
        boolean matching = passwordEncoder.matches(changePassword.getCurrent(), users.getPassword());
        if (!matching){
            return "matching";
        }else if (!changePassword.getPassword().equals(changePassword.getConfirmation())){
            return "invalid";
        }
        users.setPassword(passwordEncoder.encode(changePassword.getPassword()));
        userRepository.save(users);
        return "success";
    }


}
