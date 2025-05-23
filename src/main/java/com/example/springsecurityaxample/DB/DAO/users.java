package com.example.springsecurityaxample.DB.DAO;

import jakarta.persistence.*;

@Entity
@Table(name = "usrs")
public class users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String username;
    private String password;
}
