package com.example.springsecurityaxample.Controllers;

import com.example.springsecurityaxample.DB.DAO.Roles;
import com.example.springsecurityaxample.DB.DAO.User;
import com.example.springsecurityaxample.DB.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

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

    @GetMapping("/user/{user}")
    public String userEditPage(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Roles.values());
        return "user";
    }

    @PostMapping("/users")
    public String userSaveEdit(
//            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user,
            Model model
            ) {
        Set<String> roles = Arrays.stream(Roles.values())
                .map(Roles::name)
                .collect(Collectors.toSet());

        user.getRoles().clear();
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Roles.valueOf(key));
            }
        }

        user.setActiv(form.containsKey("active"));
        //user.setUsername(username);
        userRepository.save(user);
        return "redirect:/administration/users";
    }

}