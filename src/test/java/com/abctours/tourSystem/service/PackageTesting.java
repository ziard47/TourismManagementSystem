package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Package;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;
@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class PackageTesting {
    @Autowired
    private PackageService packageService;
    @BeforeAll
    void setup() {
        Package packag = new Package();
        packag.setPackagename("Family Vacation");
        packag.setPackagetype("Family");
        packag.setAvailability("Available");
        packag.setLocation("Maththa International Airport");
        packag.setDestination("Kandy (1D)Nuwara Eliya (2D)Kirinda (1D)Kalutara (1D)");
        packag.setPrice("20000");
        packag.setDescription("Book from our wide range of 6 nights 7 days Sri Lanka tour packages");
        packag.setActivity("Camping, Hiking");
        packageService.savePackage(packag);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(packageService.findAll().isEmpty());
    }
    @Test
    void testFindById(){
        Package packag = packageService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Family Vacation", packag.getPackagename());
    }
    @Test
    void testUpdateBooking(){
        Package packag = packageService.findById(1).orElseThrow(EntityNotFoundException::new);
        packag.setPrice("40000");
        Package updatepackage = packageService.updatepackage(1, packag);
        Assertions.assertEquals("40000",updatepackage.getPrice());
    }
    @AfterAll
    void teardown(){
        packageService.deleteById(1);
    }
}
