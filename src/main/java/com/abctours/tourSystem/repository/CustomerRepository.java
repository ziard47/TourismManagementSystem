package com.abctours.tourSystem.repository;

import com.abctours.tourSystem.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository <Customer, Integer> {
    Optional<Customer> findByEmailAndPassword(String email, String password);
}
