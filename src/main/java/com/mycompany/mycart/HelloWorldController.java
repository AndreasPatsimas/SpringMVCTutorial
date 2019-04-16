/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mycart;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author andre
 */
@Controller
@RequestMapping("/hello") //Parent Mapping
public class HelloWorldController {
    
    @RequestMapping("/showForm") // SubMapping
    public String showForm(){
        return "helloworld-form";
    }
    
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }
    
    /*@RequestMapping("/processFormVersion2")
    public String letsUpper(HttpServletRequest request, Model model){
        String name = request.getParameter("studentName");
        String result = name.toUpperCase();
        String message = "Bella Ciao "+result;
        model.addAttribute("msg", message);
        return "helloworld";
    }*/
    
    @RequestMapping("/processFormVersion2")
    public String letsUpper(@RequestParam("studentName") String name, Model model){
        //String name = request.getParameter("studentName"); anti gia auto evala to @RequestParam("studentName") String name
        String result = name.toUpperCase();
        String message = "Bella Ciao "+result;
        model.addAttribute("msg", message);
        return "helloworld";
    }
}
