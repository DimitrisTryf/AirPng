
package com.example.parkbnb.controllers;

import com.example.parkbnb.models.GarageReview;
import com.example.parkbnb.repositories.GarageReviewRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;




@RestController
public class GarageReviewController {
    
    @Autowired
    GarageReviewRepository greviewRepo;
    
    @GetMapping(value="/garageReview")
    public ModelAndView showPage(){
        
        
        return new ModelAndView("addGarageReview", "garageReview", new GarageReview());
                   
    }
    
    
    @PostMapping(value="/garageReview")
   
    
    public String addGarageReview(@RequestBody GarageReview temp){
        
        greviewRepo.save(temp);
        return "Your review has been sent successfully!!";
    }
    
    
    
    
    
}
