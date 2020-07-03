package com.example.jsp.controller;

import com.example.jsp.model.Cart;
import com.example.jsp.service.ProductService;
import com.example.jsp.service.cart.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView getCartView(Model model, HttpSession session){
        List<Cart> cart = (List<Cart>) session.getAttribute("session_cart");
        if (cart == null){
            cart = new ArrayList<>();
            String message = "No Items Added in Cart. Please Select Items";
            model.addAttribute("error", message);
        }else {
            List<Double> amount = cartService.getTotalAmount(cart);
            double payment = 0.0;
            List<Double> amt = new ArrayList<>();
            for (int i = 0; i < amount.size(); i ++) {
                amt.add(amount.get(i)); // total amount per product
                payment += amount.get(i);// to get the subTotal
            }
            model.addAttribute("amount", amt); //display all amount
            
            model.addAttribute("payment", payment); // display the subTotal amount
        }
        model.addAttribute("order", cart);
        ModelAndView view = new ModelAndView("cart/cart");
        return view;
    }

    @RequestMapping(value = "/cart/{id}", method = RequestMethod.GET)
    public String getCartView(@PathVariable int id, HttpServletRequest request){
        cartService.setSession(id, request);
        return "redirect:/home";
    }
    @RequestMapping(value = "/cart/remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable int id, HttpServletRequest request){
        cartService.remove(id, request);
        return "redirect:/cart";
    }
    @RequestMapping(value = "/cart/remove/all", method = RequestMethod.GET)
    public String removeAll(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/cart";
    }
}
