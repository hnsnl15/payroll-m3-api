package com.wonderpets.motorph.payrollm3.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.FORBIDDEN)
public class InvalidUsernameOrPassword extends RuntimeException {

    public InvalidUsernameOrPassword(String message) {
        super(message);
    }

}
