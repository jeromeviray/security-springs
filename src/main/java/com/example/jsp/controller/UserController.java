package com.example.jsp.controller;


import com.example.jsp.model.Product;
import com.example.jsp.model.User;
import com.example.jsp.service.CustomUserDetailsService;
import com.example.jsp.service.ProductService;
import com.example.jsp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Autowired
    private ProductService productService;

    Logger logger = LoggerFactory.getLogger(UserController.class);


    @RequestMapping(value = "/index", method = RequestMethod.GET) // front page
    public String getFrontPage(Model model){
        List<Product> product = productService.getAllItems();
        model.addAttribute("allItems", product);
        return "index-page";
    }

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET) // home page
    public String getProduct(Model model){
        List<Product> product = productService.getAllItems();
        model.addAttribute("items", product);
        return "home/home";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET) // get registration form
    public ModelAndView register(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return new ModelAndView("register/register");
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST) // creating new user and saving in database
    public String addUser( @Valid  @ModelAttribute("user") @RequestBody User user,
                                BindingResult result,
                                Model model ) {

        if (result.hasErrors()) {
            logger.info("Some Information in Form Registration are missing. please Sign up correctly");
            model.addAttribute("user", user);
            return "register/register";
        }
        logger.info("Successfully created account with unique username.");
        //userService.saveUser(user);
        return "redirect:/register";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET) // get login form
    public ModelAndView getLoginPage(Model model, String error, String logout){
        if(error != null){
            model.addAttribute("error", "Username and Password are Invalid");
        }else if(logout != null){
            model.addAttribute("logout", "Log out Successfully");
        }
        ModelAndView view = new ModelAndView("login/login");
        model.addAttribute("users", new User());
        return view;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST) // get data from user
    public String login(@ModelAttribute("users") @RequestBody User user){
        userDetailsService.loadUserByUsername(user.getUsername());
        return "redirect:/home";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView getProductPage(Model model){
        model.addAttribute("product", new Product());
        ModelAndView view = new ModelAndView("product/product");
        return view;
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public ModelAndView createProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile[] file) throws IOException {
        productService.createProduct(product, file);
        ModelAndView model = new ModelAndView("product/product");
        return model;
    }

}
