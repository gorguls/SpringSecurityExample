package com.example.springsecurityaxample.Controllers;

import com.example.springsecurityaxample.DB.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/administration")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminPanelController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping
    public String adminPage() {
        return "administration";
    }

    @GetMapping("/users")
    public String userListPage(Model model) {

        model.addAttribute("users", userRepository.findAll());

        return "users";
    }

}
