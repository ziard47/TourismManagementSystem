package com.abctours.tourSystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity

public class Feedback {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String name;

    @Column
    private String email;

    @Column
    private String message;

    @Column
    private String ratingsforthehotel;
}
