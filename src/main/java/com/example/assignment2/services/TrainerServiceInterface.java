/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment2.services;

import com.example.assignment2.mdel.Trainer;
import java.util.List;
import java.util.Optional;

/**
 *
 * @author mapan
 */
public interface TrainerServiceInterface {
    
    public void insertTrainer(Trainer t);
    
    public List<Trainer> fetchTrainerBySurname(String surname);
    
    public List<Trainer> fetchAllTrainers();
    
    public void deleteTrainer(int id);
    
    public Trainer fetchTrainerById(Integer id);
    
    public int trainersCount(String trainername, String surname);
}
