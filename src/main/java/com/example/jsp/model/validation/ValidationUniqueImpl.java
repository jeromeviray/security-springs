package com.example.jsp.model.validation;

import com.example.jsp.model.validation.annotation.Unique;
import com.example.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidationUniqueImpl implements ConstraintValidator<Unique, String> {
    @Autowired
    private UserService userService;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value != null && !userService.isUsernameExisted(value)){
            return true;
        }
        return false;
    }
}
