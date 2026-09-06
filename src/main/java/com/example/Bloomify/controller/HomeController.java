package com.example.Bloomify.controller;

import com.example.Bloomify.service.FlowerService;
import jakarta.annotation.PostConstruct;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private FlowerService flowerService;

    @PostConstruct
    public void init() {
        flowerService.seedFlowersIfEmpty();
    }

    @GetMapping("/")
    public String showHomePage(Model model, HttpSession session) {
        model.addAttribute("flowers", flowerService.getAllFlowers());

        String loggedInUser = (String) session.getAttribute("loggedInUser");
        model.addAttribute("loggedInUser", loggedInUser);

        return "index";
    }
}