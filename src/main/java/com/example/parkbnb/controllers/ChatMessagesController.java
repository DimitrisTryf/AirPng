/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.controllers;

import com.example.parkbnb.services.UserServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author dimit
 */
@Controller
public class ChatMessagesController {
    
    @Autowired
    UserServiceInterface usi;
    
    @GetMapping(value="/customerService")
    public String custServiceForm(ModelMap mm){
        mm.addAttribute("admins", usi.findByUserType((short)2));
        return "customerService";
    }
}
