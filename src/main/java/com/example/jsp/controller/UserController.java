package com.example.jsp.controller;


import com.example.jsp.model.User;
import com.example.jsp.service.CustomUserDetailsService;
import com.example.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @RequestMapping(value = "/", method = RequestMethod.GET) // home page
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET) // get registration form
    public String register(Model model){
        User user = new User();
        model.addAttribute("user", user);

        return "registration";
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST) // creating new user and saving in database
    public ModelAndView addUser(@ModelAttribute("user") User user){
        userService.saveUser(user);
        ModelAndView model = new ModelAndView("registration");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET) // get login form
    public ModelAndView getLoginPage(Model model, String error){
        if(error != null){
            model.addAttribute("error", "username and password are invalid");
        }
        ModelAndView view = new ModelAndView("login");
        model.addAttribute("users", new User());
        return view;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST) // get data from user
    public String login(@ModelAttribute("users") @RequestBody User user){
        userDetailsService.loadUserByUsername(user.getUsername());
        return "home";
    }
}
