package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Hotel;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class HotelInformation {
    @Autowired
    private HotelService hotelService;
    @BeforeAll
    void setup() {
        Hotel hotel = new Hotel();
        hotel.setName("Hilton Hotel Colombo");
        hotel.setCountry("SriLanka");
        hotel.setEmailaddress("hotel@gamil.com");
        hotel.setAddressone(" 2 Sir Chittampalam A,");
        hotel.setAddresstwo("Gardiner Mawatha, Colombo 00200");
        hotel.setCountry("Sri Lanka");
        hotel.setConnumber("081-70707070");

        hotelService.saveHotel(hotel);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(hotelService.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Hotel hotel = hotelService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Hilton Hotel Colombo", hotel.getName());
    }
    @Test
    void testUpdateHotel() {
        Hotel hotel = hotelService.findById(1).orElseThrow(EntityNotFoundException::new);
        hotel.setName("Hilton Hotel Colombo");
        Hotel updatedHotel = hotelService.updatehotel(1,hotel);
        Assertions.assertEquals("Hilton Hotel Colombo", updatedHotel.getName());
    }
    @AfterAll
    void tearDown(){
        hotelService.deleteById(1);
    }

}
