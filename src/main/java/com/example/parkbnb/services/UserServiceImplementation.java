/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.parkbnb.services;

import com.example.parkbnb.models.User;
import com.example.parkbnb.repositories.UserRepository;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author dimit
 */
@Service
@Transactional
public class UserServiceImplementation implements UserServiceInterface {

    @Autowired
    UserRepository ur;

    @Override
    public void insertNewUser(User u) {
        ur.save(u);
    }

    @Override
    public boolean checkIfUsernameExists(String username) {
        return !(ur.findByUserUsername(username) == null);
    }

    @Override
    public User getUserByUsername(String username) {
        return ur.findByUserUsername(username);
    }

    @Override
    public User getByGeneratedArray(String generatedArray) {
        return ur.findByUserGeneratedarray(generatedArray);
    }

    @Override
    public User getByEmail(String mail) {
        return ur.findByUserEmail(mail);
    }

}
