package com.example.springsecurityaxample.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String mainPage() {
        return "mainPage";
    }

    @GetMapping("/securedPage")
    public String securedPage() {
        return "securedPage";
    }

}
