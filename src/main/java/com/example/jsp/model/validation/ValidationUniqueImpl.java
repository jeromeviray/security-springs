package com.example.jsp.model.validation;

import com.example.jsp.model.validation.annotation.Unique;
import com.example.jsp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidationUniqueImpl implements ConstraintValidator<Unique, String> {

    Logger logger = LoggerFactory.getLogger(ValidationUniqueImpl.class);

    @Autowired
    private UserService userService;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return value != null && !userService.isUsernameAlreadyExisted(value);
    }
}
