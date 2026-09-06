package com.example.Bloomify.controller;

import com.example.Bloomify.model.User;
import com.example.Bloomify.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public String register(@RequestParam String username,
                            @RequestParam String email,
                            @RequestParam String password) {

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        userService.registerUser(user);

        return "redirect:/#login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username,
                         @RequestParam String password,
                         HttpSession session) {

        User user = userService.login(username, password);

        if (user != null) {
            session.setAttribute("loggedInUser", user.getUsername());
            return "redirect:/";
        } else {
            return "redirect:/#login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}