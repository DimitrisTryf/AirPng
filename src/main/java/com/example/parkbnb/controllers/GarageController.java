/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.controllers;

import com.example.parkbnb.models.User;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author dimit
 */
@Controller
public class GarageController {

    @Autowired
    HttpServletRequest request;

    @GetMapping(value = "/addNewGarageForm")
    public String def() {

        return "addGarage";
    }

    @RequestMapping(value = "addGarage", method = RequestMethod.POST)
    public ResponseEntity<String> fileUpload(@RequestParam("entrancePic") MultipartFile entrancePic,
            @RequestParam("billPhoto") MultipartFile billPhoto,
            @RequestParam("coordinates") String coordinates,
            @RequestParam("address") String address,
            @RequestParam("comment") String comment,
            HttpSession session)
            throws IOException {

        String dest = request.getSession().getServletContext().getRealPath("/"); //in project folder -> parkbnb\target\parkbnb-0.0.1-SNAPSHOT\static\images\
        User sessionUser = (User) session.getAttribute("userSession");
        File destination = new File(new File(new File(dest).getParent()).getParent() + "\\src\\main\\resources\\static\\assets\\garageImages\\" + sessionUser.getUserId());
        destination.mkdirs();
        entrancePic.transferTo(new File(destination, entrancePic.getOriginalFilename()));
        billPhoto.transferTo(new File(destination, billPhoto.getOriginalFilename()));
        return new ResponseEntity<>("File Uploaded Successfully.", HttpStatus.OK);
    }

    @RequestMapping(value = "addGarageMultiSpot", method = RequestMethod.POST)
    public ResponseEntity<String> fileUploadMultiSpot(@RequestParam("entrancePic") MultipartFile entrancePic,
            @RequestParam("spotPic") MultipartFile spotPic,
            @RequestParam("billPhoto") MultipartFile billPhoto,
            @RequestParam("coordinates") String coordinates,
            @RequestParam("address") String address,
            @RequestParam("comment") String comment,
            HttpSession session)
            throws IOException {

        String dest = request.getSession().getServletContext().getRealPath("/"); //in project folder -> parkbnb\target\parkbnb-0.0.1-SNAPSHOT\static\images\
        User sessionUser = (User) session.getAttribute("userSession");
        File destination = new File(new File(new File(dest).getParent()).getParent() + "\\src\\main\\resources\\static\\assets\\garageImages\\" + sessionUser.getUserId());
        destination.mkdirs();
        entrancePic.transferTo(new File(destination, entrancePic.getOriginalFilename()));
        spotPic.transferTo(new File(destination, spotPic.getOriginalFilename()));
        billPhoto.transferTo(new File(destination, billPhoto.getOriginalFilename()));
        return new ResponseEntity<>("File Uploaded Successfully.", HttpStatus.OK);
    }
}
