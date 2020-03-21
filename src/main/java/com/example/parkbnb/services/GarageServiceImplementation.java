/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.services;

import com.example.parkbnb.models.Garage;
import com.example.parkbnb.repositories.GarageRepository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dimit
 */

@Service
@Transactional
public class GarageServiceImplementation implements GarageServiceInterface{

    @Autowired
    GarageRepository gr;
    
    @Override
    public Garage addGarage(Garage garage) {
        return gr.save(garage);
    }
    
}
