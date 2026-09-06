package com.example.Bloomify;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.awt.Desktop;
import java.net.URI;  

@SpringBootApplication
public class BloomifyApplication {

    public static void main(String[] args) {
        SpringApplication.run(BloomifyApplication.class, args);

        try {
            if (Desktop.isDesktopSupported()) {
                Desktop.getDesktop().browse(new URI("http://localhost:8080"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}