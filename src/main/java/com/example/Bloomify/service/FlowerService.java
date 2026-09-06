package com.example.Bloomify.service;

import com.example.Bloomify.model.Flower;
import com.example.Bloomify.repository.FlowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlowerService {

    @Autowired
    private FlowerRepository flowerRepository;

    public List<Flower> getAllFlowers() {
        return flowerRepository.findAll();
    }

    public Flower getFlowerByName(String name) {
        return flowerRepository.findByName(name);
    }

    public void save(Flower flower) {
        flowerRepository.save(flower);
    }

    public void seedFlowersIfEmpty() {
        if (flowerRepository.count() == 0) {
            flowerRepository.save(new Flower("Rose", "https://images.unsplash.com/photo-1556712691-5c39e0e32a8e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 9000,2500.00));
            flowerRepository.save(new Flower("Tulip", "https://images.unsplash.com/photo-1488928741225-2aaf732c96cc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 2000,3000.00));
            flowerRepository.save(new Flower("Lily", "https://images.unsplash.com/photo-1716335024740-5fec88af5a05?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 5000,5000.00));
            flowerRepository.save(new Flower("Sunflower", "https://images.unsplash.com/photo-1552160793-cbaf3ebcba72?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 1000,4240.00));
            flowerRepository.save(new Flower("Orchid","https://images.unsplash.com/photo-1571677179476-ab32559a6c7c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fE9yY2hpZHMlMjBmb3IlMjBhJTIwd2Vic2l0ZXxlbnwwfHwwfHx8MA%3D%3D", 900,6500.00));
            flowerRepository.save(new Flower("Daisy", "https://images.pexels.com/photos/34210766/pexels-photo-34210766.jpeg", 4000,2499.00));
            flowerRepository.save(new Flower("Carnation", "https://images.unsplash.com/photo-1750851716187-9666c97b6d3c?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 5000,3500.00));
            flowerRepository.save(new Flower("Lavender", "https://plus.unsplash.com/premium_photo-1688045685821-4958c1e28322?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 1000,6800.00));
            flowerRepository.save(new Flower("Peony", "https://images.unsplash.com/photo-1511201173873-c327e63eb6c4?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 1000,11500.00));
            flowerRepository.save(new Flower("Marigold", "https://images.unsplash.com/photo-1722867713971-630f5d9b9bbb?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 7000,1950));
            flowerRepository.save(new Flower("Jasmine", "https://plus.unsplash.com/premium_photo-1695751301992-c5c6e9cd9d20?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 8000,2500.00));
            flowerRepository.save(new Flower("Hydrangea", "https://images.unsplash.com/photo-1651240691792-9054fc8c9652?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", 6000,5500.00));
        }
    }
}