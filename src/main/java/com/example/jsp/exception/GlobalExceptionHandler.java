package com.example.jsp.exception;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {
    @ExceptionHandler(value = UsernameNotFoundException.class)
    public ModelAndView usernameNotFound(UsernameNotFoundException usernameNotFound){
        ModelAndView view = new ModelAndView("error");
        view.addObject("errorUsernameNotFound", usernameNotFound);
        return view;
    }
    @ExceptionHandler(value = Exception.class)
    public ModelAndView handler(Exception ex){
        ModelAndView view = new ModelAndView("error");
        view.addObject("exception", ex.getMessage());
        return view;
    }
}
