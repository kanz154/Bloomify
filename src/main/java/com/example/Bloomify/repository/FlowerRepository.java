package com.example.Bloomify.repository;

import com.example.Bloomify.model.Flower;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FlowerRepository extends JpaRepository<Flower, Long> {
    Flower findByName(String name);
}