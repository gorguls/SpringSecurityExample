package com.example.springsecurityaxample.DB.Repositories;

import com.example.springsecurityaxample.DB.DAO.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
