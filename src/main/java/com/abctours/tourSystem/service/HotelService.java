package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Hotel;
import com.abctours.tourSystem.repository.HotelRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 *This class contains methods for Hotel
 */
@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepositoryobject;
    /**
     * Creating LOG
     */
    private static final Logger LOG = LoggerFactory.getLogger(HotelService.class);
    /**
     *
     *This method returns all the Hotel
     * @return List<Hotel>
     */
    public List<Hotel> findAll(){
        List<Hotel> hotels = hotelRepositoryobject.findAll();
        LOG.info("Successfully retrieved all the hotel details");
        return hotels;
    }

    /**
     *This method returns hotel for a given id
     * @param id
     * @return Optional<Hotel>
     */
    public Optional<Hotel> findById(int id){
        Optional<Hotel> hotel = hotelRepositoryobject.findById(id);
        LOG.info("Successfully retrieved hotel details for the given id");
        return hotel;
    }

    /**
     * this method saves a hotel and returns it
     * @param hotelobject
     * @return
     */
    public Hotel saveHotel(Hotel hotelobject){
        Hotel savedHotel = hotelRepositoryobject.save(hotelobject);
        LOG.info("successfully saved hotel for the given details.");
        return savedHotel;
    }

    /**
     *
     * This method updates a hotel of given id
     * @param id
     * @param hotel
     * @return
     */
    public Hotel updatehotel(int id, Hotel hotel) {
        LOG.info("updating hotel for a given id.");
        Hotel updatehotel = hotelRepositoryobject.findById(id).orElse(null);
        if (updatehotel != null){
            updatehotel.setName(hotel.getName());
            updatehotel.setAddressone(hotel.getAddressone());
            updatehotel.setAddressone(hotel.getAddresstwo());
            updatehotel.setCountry(hotel.getCountry());
            updatehotel.setConnumber(hotel.getConnumber());
            updatehotel.setEmailaddress(hotel.getEmailaddress());
            hotelRepositoryobject.save(updatehotel);
        }else{
            LOG.warn("No hotel details for the given id");
        }
        return updatehotel;
    }
    /**
     *This method deletes a hotel for given id
     * @param id
     */
    public void deleteById(int id){
        hotelRepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }

}


