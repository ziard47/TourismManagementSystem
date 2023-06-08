package com.abctours.tourSystem.controller;

import com.abctours.tourSystem.model.Booking;
import com.abctours.tourSystem.service.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BookingController {
    @Autowired
    private BookingService bookingService;

    @GetMapping("/view-booking")
    public String showreadBookingPage(Model model){
        model.addAttribute("bookings", bookingService.findAll());
        return "viewbooking";
    }
    @GetMapping("/add-booking")
    public String showaddBookingPage(Model model){
        model.addAttribute("command", new Booking());
        return "addbooking";
    }
    @PostMapping("/add-booking")
    public String addBooking(@ModelAttribute("booking")Booking booking){
        bookingService.saveBooking(booking);
        return "redirect:/view-booking";
    }

    @GetMapping("/update-booking/{id}")
    public String showupdateBookingPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", bookingService.findById(id).orElse(null));
        return "updatebooking";
    }
    @PostMapping("/update-booking/{id}")
    public String updateBooking(@PathVariable int id, @ModelAttribute("booking") Booking booking){
        bookingService.updatebooking(id, booking);
        return "redirect:/view-booking";
    }

    @GetMapping("/delete-booking/{id}")
    public String deleteBooking(@PathVariable int id){
        bookingService.deleteById(id);
        return "redirect:/view-booking";
    }
}
