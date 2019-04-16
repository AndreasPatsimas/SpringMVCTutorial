/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mycart;

import java.util.ArrayList;
import java.util.List;
import model.entity.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author andre
 */
@Controller
@RequestMapping("/silly")
public class SillyController {
    
    @RequestMapping("/showForm")
    public String displayTheForm(){
        return"silly";
    }
    
    @RequestMapping("/confirm")
    public String showUsers(Model model){
        List<Users> list = new ArrayList<>();
        /*list.add("andreas");
        list.add("sotiris");*/
        Users user = new Users("andreas3","aris1914");
        user.setId(1);
        Users user1 = new Users("sotiris3","fenomeno");
        user1.setId(2);
        list.add(user);
        list.add(user1);
        model.addAttribute("userList", list);
        return "users";
    }
}
