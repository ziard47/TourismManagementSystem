package com.abctours.tourSystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity

public class Hotel {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String name;

    @Column
    private String addressline1;

    @Column
    private String addressline2;

    @Column
    private String country;

    @Column
    private String connumber;

    @Column
    private String emailaddress;
}
