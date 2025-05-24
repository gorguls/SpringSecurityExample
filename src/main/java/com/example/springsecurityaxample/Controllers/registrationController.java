package com.example.springsecurityaxample.Controllers;

import com.example.springsecurityaxample.DB.Repositories.UserRepository;
import com.example.springsecurityaxample.DB.DAO.Roles;
import com.example.springsecurityaxample.DB.DAO.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class registrationController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/registration")
    public String registrationPage() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Model model) {
        User userGromDB = userRepository.findByUsername(user.getUsername());
        if (userGromDB != null) {
            model.addAttribute("errorMessage", "This username is already taken");
            return "registration";
        }

        user.setActiv(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRoles(Collections.singleton(Roles.USER));
        userRepository.save(user);
        return "redirect:/login";
    }
}