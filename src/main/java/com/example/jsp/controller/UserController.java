package com.example.jsp.controller;


import com.example.jsp.model.User;
import com.example.jsp.service.CustomeUserDetailsService;
import com.example.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CustomeUserDetailsService userDetailsService;

    @RequestMapping(value = "/", method = RequestMethod.GET) // home page
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET) // get registration form
    public String register(Model model){
        model.addAttribute("user", new User());
        return "registration";
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST) // creating new user and saving in database
    public ModelAndView addUser(@ModelAttribute("user") User user){
        userService.saveUser(user);
        ModelAndView model = new ModelAndView("registration");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET) // get login form
    public ModelAndView login(Model model){
        ModelAndView view = new ModelAndView("login");
        model.addAttribute("users", new User());
        return view;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST) // get data from user
    public ModelAndView loginProcess(@ModelAttribute("users") User users){
        userDetailsService.loadUserByUsername(users.getUsername());
        ModelAndView model = new ModelAndView("home");
        return model;
    }
}
