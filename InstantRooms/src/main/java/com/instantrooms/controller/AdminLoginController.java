package com.instantrooms.controller;

import java.util.Objects;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.servlet.ModelAndView;

import com.instantrooms.entity.Admin;
import com.instantrooms.service.AdminService;



@Controller
public class AdminLoginController {
	
	
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("/adminlogin")
	public ModelAndView login() {
	     ModelAndView mav = new ModelAndView("admin/adminlogin");
	       // mav.addObject("admin", new Admin());
	        return mav;
	    }

	@PostMapping("/login")
    public String login(@ModelAttribute("admin") Admin admin ) {
    
     Admin oauthUser = adminService.login(admin.getEmail(), admin.getPassword());
    
 
     System.out.print(oauthUser);
     if(Objects.nonNull(oauthUser))
     {
  
     return "redirect:/home";
     
     } else {
     return "redirect:/adminlogin";
    
    
     }
	}
	
	
//	    @RequestMapping(value = {"/logout"}, method = RequestMethod.POST)
//	    public String logoutDo(HttpServletRequest request,HttpServletResponse response)
//	    {
//	    
//	        return "redirect:/";
//	    }
	
	@GetMapping("/logout")
	public String logout() {
		return "admin/adminlogin";
	}
	
}

