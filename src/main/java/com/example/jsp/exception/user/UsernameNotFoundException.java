package com.example.jsp.exception.user;

import com.example.jsp.exception.ProjectRunTimeException;

public class UsernameNotFoundException extends ProjectRunTimeException {
    public UsernameNotFoundException(String message) {
        super(message);
    }
}
