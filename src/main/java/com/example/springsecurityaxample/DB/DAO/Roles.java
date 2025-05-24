package com.example.springsecurityaxample.DB.DAO;

import org.springframework.security.core.GrantedAuthority;

public enum Roles implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
