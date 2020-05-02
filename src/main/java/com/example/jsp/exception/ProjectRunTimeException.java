package com.example.jsp.exception;

public class ProjectRunTimeException extends RuntimeException{
    public ProjectRunTimeException(String message) {
        super(message);
    }

    public ProjectRunTimeException(String message, Throwable cause) {
        super(message, cause);
    }
}
