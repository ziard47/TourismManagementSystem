package com.abctours.tourSystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Booking {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String customername;

    @Column
    private String hotelid;

    @Column
    private String packageid;

    @Column
    private String bookedon;

    @Column
    private String numberofdays;
}

