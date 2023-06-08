package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Booking;
import com.abctours.tourSystem.repository.BookingRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * This class contains methods for Booking
 */
@Service
public class BookingService {
    @Autowired
    private BookingRepository bookingRepositoryobject;
    /**
     * Creating LOG
     */
    private static Logger LOG = LoggerFactory.getLogger(BookingService.class);
    /**
     *
     *This method returns all the Booking
     * @return List<Booking>
     */
    public List<Booking> findAll(){
        List<Booking> bookings = bookingRepositoryobject.findAll();
        LOG.info("Successfully retrieved all the booking details");
        return bookings;
    }
    /**
     *This method returns booking for a given id
     * @param id
     * @return Optional<booking>
     */

    public Optional<Booking> findById(int id){
        Optional<Booking> booking = bookingRepositoryobject.findById(id);
        LOG.info("Successfully retrieved booking details for the given id");
        return booking;
    }
    /**
     * this method saves a booking and returns it
     * @param bookingobject
     * @return
     */

    public Booking saveBooking(Booking bookingobject){
        Booking booking = new Booking();
        Booking savedBooking = bookingRepositoryobject.save(bookingobject);
        LOG.info("successfully saved booking for the given details.");
        return savedBooking;
    }
    /**
     *
     * This method updates a booking of given id
     * @param id
     * @param booking
     * @return
     */
    public Booking updatebooking(int id, Booking booking) {
        LOG.info("updating booking for a given id.");
        Booking updatebooking = bookingRepositoryobject.findById(id).orElse(null);
        if (updatebooking != null){
            updatebooking.setCustomername(booking.getCustomername());
            updatebooking.setHotelid(booking.getHotelid());
            updatebooking.setPackageid(booking.getPackageid());
            updatebooking.setBookedon(booking.getBookedon());
            updatebooking.setNumberofdays(booking.getNumberofdays());
            bookingRepositoryobject.save(updatebooking);
        }else{
            LOG.warn("No booking details for the given id");
        }
        return updatebooking;
    }
    /**
     *This method deletes a booking for given id
     * @param id
     */
    public void deleteById(int id){
        bookingRepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }

}