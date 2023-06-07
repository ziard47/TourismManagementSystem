package com.abctours.tourSystem.repository;

import com.abctours.tourSystem.model.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository

public interface HotelRepository extends JpaRepository <Hotel, Integer>{

}
