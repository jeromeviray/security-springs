package com.example.jsp.service.cart;

import com.example.jsp.model.Cart;
import com.example.jsp.model.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface CartService {
    Product findById(int id);
    void setSession(int id, HttpServletRequest request);
    void remove(int id, HttpServletRequest request);
    int check(int id, List<Cart> cart);
    List<Double> totalAmount(List<Cart> cart);
}

