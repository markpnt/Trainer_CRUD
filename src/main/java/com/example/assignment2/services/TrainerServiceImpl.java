/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment2.services;

import com.example.assignment2.mdel.Trainer;
import com.example.assignment2.repos.TrainerRepository;
import java.util.List;
import java.util.Optional;
import javax.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mapan
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface{
    
    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
    }

    @Override
    public List<Trainer> fetchTrainerBySurname(String surname) {
        return trainerRepository.findBySurnameIgnoreCase(surname);
    }

    @Override
    public List<Trainer> fetchAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    public void deleteTrainer(int id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public Trainer fetchTrainerById(Integer id) {
       Trainer trainer = trainerRepository.getOne(id);
       return trainer;
    }

    @Override
    public int trainersCount(String trainername,String surname) {
        return trainerRepository.countByTrainernameAndSurname(trainername,surname);
    }  
}
