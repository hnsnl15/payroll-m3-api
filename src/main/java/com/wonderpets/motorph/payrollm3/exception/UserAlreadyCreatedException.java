package com.wonderpets.motorph.payrollm3.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.BAD_REQUEST)
public class UserAlreadyCreatedException extends RuntimeException {

    public UserAlreadyCreatedException(String message) {
        super(message);
    }

}
