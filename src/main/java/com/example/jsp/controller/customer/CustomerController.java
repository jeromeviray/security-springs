package com.example.jsp.controller.customer;

import com.example.jsp.BeanUtils;
import com.example.jsp.model.Customer;
import com.example.jsp.service.customer.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RestController
public class CustomerController {
    @Autowired
    private CustomerService customerService = BeanUtils.getBean( CustomerService.class );

    @RequestMapping(value = "/customer", method = RequestMethod.GET)
    public ModelAndView customerView(Model model){
        model.addAttribute("customers", new Customer());
        return new ModelAndView("Checkout/checkout");
    }
    @RequestMapping(value = "/customer", method = RequestMethod.POST)
    public String getCustomerDetails(@ModelAttribute("customer") Customer customer, HttpServletRequest request){
        Integer id = (Integer) request.getSession().getAttribute("userId");
        customerService.save(customer, id);
        return "redirect:/customer";
    }
}
