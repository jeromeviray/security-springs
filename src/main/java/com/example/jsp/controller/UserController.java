package com.example.jsp.controller;


import com.example.jsp.model.User;
import com.example.jsp.service.CustomeUserDetailsService;
import com.example.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CustomeUserDetailsService userDetailsService;

    @RequestMapping(value = "/register")
    public String register(Model model){
        model.addAttribute("newuser", new User());
        return "registration";
    }
    @RequestMapping(value = "/registration/add/user")
    public ModelAndView addUser(@ModelAttribute("newuser") User newuser){
        userService.saveUser(newuser);
        ModelAndView model = new ModelAndView("registration");
        return model;
    }

    @RequestMapping(value = "/login")
    public ModelAndView login(){
        ModelAndView model = new ModelAndView("login");
        return model;
    }

    @RequestMapping(value = "/process")
    public ModelAndView loginProcess(@RequestParam("username") String username, @RequestParam("password") String password){
        userDetailsService.loadUserByUsername(username);
        ModelAndView model = new ModelAndView("home");
        return model;
    }

    @RequestMapping(value = "/home")
    public String home(){
        return "home";
    }
}
