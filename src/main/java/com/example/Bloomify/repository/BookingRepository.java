package com.example.Bloomify.repository;

import com.example.Bloomify.model.Booking;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingRepository extends JpaRepository<Booking, Long> {
}