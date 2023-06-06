package com.abctours.tourSystem.controller;

import com.abctours.tourSystem.model.Hotel;
import com.abctours.tourSystem.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HotelController {
    @Autowired
    private HotelService hotelService;
//view added hotels
    @GetMapping("/view-hotel")
    public String showreadHotel(Model model){
        model.addAttribute("hotels", hotelService.findAll());
        return "viewhotel";
    }
//add new hotels to the system
    @GetMapping("/create-hotel")
    public String showCreateHotel(Model model){
        model.addAttribute("command", new Hotel());
        return "addhotel";
    }
//create new hotels and redirect to the view hotel code
    @PostMapping("/create-hotel")
    public String createHotel(@ModelAttribute("hotel")Hotel hotel){
        hotelService.saveHotel(hotel);
        return "redirect:/view-hotel";
    }
//update hotel information
    @GetMapping("/update-hotel/{id}")
    public String showupdateHotel(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", hotelService.findById(id).orElse(null));
        return "updatehotel";
    }

    @PostMapping("/update-hotel/{id}")
    public String updateHotel(@PathVariable int id, @ModelAttribute("hotel") Hotel hotel){
        hotelService.updatehotel(id, hotel);
        return "redirect:/view-hotel";
    }

    //delete hotel information
    @GetMapping("/delete-hotel/{id}")
    public String deleteHotel(@PathVariable int id){
       hotelService.deleteById(id);
        return "redirect:/view-hotel";
    }
}

