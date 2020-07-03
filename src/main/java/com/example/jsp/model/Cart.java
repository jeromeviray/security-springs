package com.example.jsp.model;

import java.io.Serializable;

public class Cart implements Serializable {
    private static final long serialVersionUID=1L;
    private int id;
    private int quantity;
    private Product product;
    private double amount;

    public Cart() {
    }

    public Cart(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Cart(Product product, int quantity, double amount) {
        this.product = product;
        this.quantity = quantity;
        this.amount = amount;
    }

    public int getId() {
        return product.getId();
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}
