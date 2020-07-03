package com.example.jsp.service.cart.impl;

import com.example.jsp.model.Cart;
import com.example.jsp.model.Product;
import com.example.jsp.repository.ProductRepository;
import com.example.jsp.service.cart.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class CartServiceImp implements CartService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public Product findById(int id) {
        List<Product> product = productRepository.findById(id);
        for (Product products : product){
            return products;
        }
        return null;
    }

    @Override
    public void setSession(int id, HttpServletRequest request){
        if (request.getSession().getAttribute("session_cart") == null) {
            List<Cart> cart = new ArrayList<>();
            cart.add(new Cart(findById(id), 1));
            request.getSession().setAttribute("session_cart", cart);
        }else {
            List<Cart> cart = (List<Cart>) request.getSession().getAttribute("session_cart");

            int counter = check(id, cart);
            if (counter != -1){
                int quantity = cart.get(counter).getQuantity() + 1;
                cart.get(counter).setQuantity(quantity);
            }else {
                cart.add(new Cart(findById(id), 1));
            }

            request.getSession().setAttribute("session_cart", cart);
        }
    }

    @Override
    public void remove(int id, HttpServletRequest request) {
        List<Cart> cart = (List<Cart>) request.getSession().getAttribute("session_cart");
        int checked = check(id , cart);
        cart.remove(checked);
        request.getSession().setAttribute("session_cart", cart);
    }

    @Override
    public int check(int id, List<Cart> cart) {
        for (int i = 0; i < cart.size(); i++){
            if (cart.get(i).getId() == id){
                return i;
            }
        }
        return -1;
    }

    @Override
    public List<Double> getTotalAmount(List<Cart> cart) {
        List<Double> amount = new ArrayList<>();
        double items = 0.0;
        for (int i = 0; i < cart.size(); i++){
            items = cart.get(i).getQuantity() * cart.get(i).getProduct().getPrice();
            amount.add(items);
        }
        return amount;
    }
}
