/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.controllers;

import com.example.parkbnb.models.Garage;
import com.example.parkbnb.models.Rental;
import com.example.parkbnb.services.GarageServiceInterface;
import com.example.parkbnb.services.RentalServiceInterface;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dimit
 */
@Controller
public class RentalController {
    
    @Autowired
    GarageServiceInterface gsi;
    @Autowired
    RentalServiceInterface rsi;
    
    @GetMapping(value = "/addDates/{id}")
    public String addAvailableDates(@PathVariable(name = "id") Integer garageId,
            @RequestParam (name = "datetimes") String datetimes,
            @RequestParam (name = "pph") String pph) {
        Garage tempGarage = gsi.findById(garageId);
        double price = Double.parseDouble(pph);
        String[] dates = datetimes.split("-");
        LocalDateTime start = LocalDateTime.parse(dates[0].trim(), DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm"));
        LocalDateTime end = LocalDateTime.parse(dates[1].trim(), DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm"));
        System.out.println("--------------------------------------------------------------------------------");
        //TODO add new rental
        Rental tempRental = new Rental();
        tempRental.setRentalStart(Date.from(start.atZone( ZoneId.systemDefault()).toInstant()));
        tempRental.setRentalEnd(Date.from(end.atZone( ZoneId.systemDefault()).toInstant()));
        tempRental.setRentalPaydone((short)0);
        BigDecimal bd = new BigDecimal(price);
        tempRental.setRentalPriceperhour(bd);
        tempRental.setRentalGarageid(tempGarage);
        rsi.addNewRental(tempRental);
        System.out.println("--------------------------------------------------------------------------------");
        return "redirect:/showUsersGarages";
    }

}
