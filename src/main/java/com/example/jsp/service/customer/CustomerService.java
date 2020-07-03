package com.example.jsp.service.customer;

import com.example.jsp.model.Customer;

import java.util.List;

public interface CustomerService {
    void save(Customer customer, int id);
    List<Customer> findById(int id);
    List<Customer> update(int id);
}
