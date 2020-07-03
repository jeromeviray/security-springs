package com.example.jsp.service.customer.impl;

import com.example.jsp.BeanUtils;
import com.example.jsp.configure.SuccessHandler;
import com.example.jsp.model.Customer;
import com.example.jsp.model.User;
import com.example.jsp.repository.CustomerRepository;
import com.example.jsp.repository.UserRepository;
import com.example.jsp.service.customer.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    UserRepository userRepository = BeanUtils.getBean( UserRepository.class );
    Logger logger = LoggerFactory.getLogger(CustomerServiceImpl.class);

    @Override
    public void save(Customer customer, int id) {
        User user = userRepository.findById(id);
        customer.setUser(user);
        logger.info(String.valueOf(customer.getName()));
        customerRepository.save(customer);
    }

    @Override
    public List<Customer> findById(int id) {
        return null;
    }

    @Override
    public List<Customer> update(int id) {
        return null;
    }
}
