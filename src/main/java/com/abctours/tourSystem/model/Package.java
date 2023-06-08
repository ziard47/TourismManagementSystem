package com.abctours.tourSystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Package {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
//atributes of the packages
    @Column(nullable = false,length = 50)
    private String packagename;

    @Column
    private String packagetype;

    @Column
    private String activity;

    @Column
    private String price;

    @Column
    private String destination;

    @Column
    private String description;

    @Column
    private String availability;

    @Column
    private String location;

}