/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.services;

import com.example.parkbnb.models.GarageReview;
import com.example.parkbnb.repositories.GarageReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Mike
 */
public class GarageReviewServiceImplementation implements GarageReviewServiceInterface{
    
    @Autowired
    GarageReviewRepository gwr;

    @Override
    public void insertNewGarageReview(GarageReview gr) {
        gwr.save(gr);
    }
    
    
    
}
