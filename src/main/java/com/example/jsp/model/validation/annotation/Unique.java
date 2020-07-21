package com.example.jsp.model.validation.annotation;

import com.example.jsp.model.validation.ValidationUniqueImpl;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Target({ElementType.METHOD, ElementType.FIELD})
@Constraint(validatedBy = ValidationUniqueImpl.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface Unique {
    String message() default "Username is already existed";
    Class<?>[] groups() default {};
    Class<? extends Payload[]> [] payload() default {};
}
