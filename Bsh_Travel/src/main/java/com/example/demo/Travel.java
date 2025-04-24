package com.example.demo;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Travel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer id;

    public String date;
    public String name;
}
