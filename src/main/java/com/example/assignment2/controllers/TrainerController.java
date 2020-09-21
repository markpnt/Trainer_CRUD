/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment2.controllers;

import com.example.assignment2.mdel.Trainer;
import com.example.assignment2.services.TrainerServiceImpl;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author mapan
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceImpl trainerServiceImpl;

   
    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/preinserttrainer")
    public String showForm(ModelMap mm) {

        mm.addAttribute("newtrainer", new Trainer());
        return "createform";
    }

    @PostMapping("/doinserttrainer")
    public String insertTrainer(ModelMap mm,@Valid @ModelAttribute("newtrainer") Trainer t,
            BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return "createform";
        }
        if(trainerServiceImpl.trainersCount(t.getTrainername(),t.getSurname()) > 0){
            mm.addAttribute("doubletrainer", "Trainer already exists");
            return "createform";
        }
        trainerServiceImpl.insertTrainer(t);
        return "redirect:/fetchalltrainers";
    }
    
    @GetMapping("/presearchform")
    public String showSearchForm(){
        return "selecttrainer";
    }
    
    @PostMapping("/searchtrainer")
    public String fetchTrainerBySurname(ModelMap mm, @RequestParam (name="surname") String surname){
        List<Trainer> trainers = trainerServiceImpl.fetchTrainerBySurname(surname);
        mm.addAttribute("resulttrainers", trainers);
        return "bynametrainer";
    }
    
    @GetMapping("/fetchalltrainers")
    public String fetchAllTrainers(ModelMap mm){
        List<Trainer> trainers = trainerServiceImpl.fetchAllTrainers();
        mm.addAttribute("trainersall", trainers);
        return "alltrainers";
    }
    
    @PostMapping("/deletetrainer")
    public String deleteTrainer(@RequestParam (name="id") int id){
        trainerServiceImpl.deleteTrainer(id);
        return "redirect:/fetchalltrainers";
    }
    
    @PostMapping("/edittrainer")
    public String showUpdateForm(ModelMap mm,@RequestParam (name="id") Integer id){
        Trainer trainer = trainerServiceImpl.fetchTrainerById(id);    
        mm.addAttribute("traineredit", trainer);
        return "updatetrainerform";
    }
    
    @PostMapping("/updatetrainer")
    public String updateTrainer(@Valid @ModelAttribute("traineredit") Trainer t,
            BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "updatetrainerform";
        }
        trainerServiceImpl.insertTrainer(t);
        return "redirect:/fetchalltrainers";
    }
    
    @PostMapping("/trainerdetails")
    public String showTrainerDetails(ModelMap mm,@RequestParam (name="id") int id){
        Trainer trainer = trainerServiceImpl.fetchTrainerById(id);    
        mm.addAttribute("trainerdetails", trainer);
        return "detailsoftrainer";
    }
}