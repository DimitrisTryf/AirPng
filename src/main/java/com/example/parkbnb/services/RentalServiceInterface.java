/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.services;

import com.example.parkbnb.models.Rental;
import java.util.ArrayList;

/**
 *
 * @author dimit
 */
public interface RentalServiceInterface {
    
    public void addNewRental(Rental rental);
    
    public ArrayList<Rental> getAvailable();
    
}
