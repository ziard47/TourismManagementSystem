package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Booking;
import com.abctours.tourSystem.model.Package;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class BookingTest {

    @Autowired
    private BookingService bookingService;
    @BeforeAll
    void setup() {
        Booking booking = new Booking();
        booking.setCustomername("Sachin dew");
        booking.setHotelid("15");
        booking.setPackageid("06");
        booking.setBookedon("02/12/2022");
        booking.setNumberofdays("5");
        bookingService.saveBooking(booking);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(bookingService.findAll().isEmpty());
    }

    @Test
    void testFindById(){
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Sachin dew", booking.getCustomername());
    }

    @Test
    void testUpdateBooking(){
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        booking.setNumberofdays("10");
        Booking updatebooking = bookingService.updatebooking(1, booking);
        Assertions.assertEquals("10",updatebooking.getNumberofdays());
    }
    @AfterAll
    void teardown(){
        bookingService.deleteById(1);
    }
}