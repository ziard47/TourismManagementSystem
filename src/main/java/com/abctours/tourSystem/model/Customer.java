package com.abctours.tourSystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Customer {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String firstname;

    @Column
    private String lastname;

    @Column
    private Integer mobile;

    @Column
    private String email;

    @Column
    private String password;

    @Column
    private String address;

    @Column
    private String country;



}
