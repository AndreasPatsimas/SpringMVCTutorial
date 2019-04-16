/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mycart;

import javax.validation.Valid;
import model.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author andre
 */
@Controller
@RequestMapping("/study")
public class StudentController {
    
    @RequestMapping("/showForm")
    public String showForm(Model model){
        Student student = new Student();
        model.addAttribute("student", student);
        return "student-form";
    }
    
    @RequestMapping("/processForm")
    public String processForm( @Valid @ModelAttribute("student") Student student, BindingResult bindingResult){ // to @ModelAttribute("student") pairnei to student apo to front, student-form.jsp, mesa apo to ModelAttribute="student"
        //@Valid perform validation rules to object student
        if(bindingResult.hasErrors()){
            return "student-form";
        }
        else{
          return "student-confirmation";  
        }
        
    }
    
}
