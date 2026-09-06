package com.example.Bloomify.service;

import com.example.Bloomify.model.Booking;
import com.example.Bloomify.model.Flower;
import com.example.Bloomify.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private FlowerService flowerService;

    public Booking processBooking(Booking booking) {

        Flower flower = flowerService.getFlowerByName(booking.getFlowerName());

        if (flower != null && flower.getStockQuantity() >= booking.getQuantity()) {
            flower.setStockQuantity(flower.getStockQuantity() - booking.getQuantity());
            flowerService.save(flower);
            booking.setStatus("Accepted");
        } else {
            booking.setStatus("Denied");
        }

        bookingRepository.save(booking);
        return booking;
    }
}