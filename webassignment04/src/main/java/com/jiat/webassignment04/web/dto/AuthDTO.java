package com.jiat.webassignment04.web.dto;

import com.jiat.webassignment04.web.entity.Employee;

public class AuthDTO {

    private String password;
    private Long id;



    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
