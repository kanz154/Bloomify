package com.example.Bloomify.controller;

import com.example.Bloomify.model.Booking;
import com.example.Bloomify.model.Flower;
import com.example.Bloomify.service.BookingService;
import com.example.Bloomify.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private BookingService bookingService;

    // ✅ 1. Added FlowerService so we can look up the price
    @Autowired
    private FlowerService flowerService;

    @PostMapping("/add")
    public String addBooking(@RequestParam String flowerName,
                              @RequestParam String customerName,
                              @RequestParam String orderType,
                              @RequestParam(required = false) String state,
                              @RequestParam(required = false) String city,
                              @RequestParam(required = false) String address,
                              @RequestParam(required = false) String venueType,
                              @RequestParam String eventDate,
                              @RequestParam int quantity,
                              Model model) {

        Flower selectedFlower = flowerService.getFlowerByName(flowerName);
        double totalPrice = 0.0;
        
        if (selectedFlower != null) {
            totalPrice = selectedFlower.getPrice() * quantity;
        }

        Booking booking = new Booking();
        booking.setFlowerName(flowerName);
        booking.setCustomerName(customerName);
        booking.setOrderType(orderType);
        booking.setState(state);
        booking.setCity(city);
        booking.setAddress(address);
        booking.setVenueType(venueType);
        booking.setEventDate(eventDate);
        booking.setQuantity(quantity);
        booking.setTotalPrice(totalPrice); 

        Booking result = bookingService.processBooking(booking);
        model.addAttribute("booking", result);

        return "bookingResult";
    }
}