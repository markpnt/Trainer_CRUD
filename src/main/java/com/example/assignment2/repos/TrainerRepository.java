/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment2.repos;

import com.example.assignment2.mdel.Trainer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mapan
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
    List<Trainer> findBySurnameIgnoreCase(String surname);
    
    int countByTrainernameAndSurname(String trainername, String surname);
    
//    @Query("SELECT COUNT(t) FROM TRAINER t WHERE t.trainername=?1")
//    int trainersCou(String trainername);
   
}
