package com.instantrooms.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.Objects;

import javax.validation.Valid;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.instantrooms.entity.Admin;
import com.instantrooms.entity.BusinessUser;
import com.instantrooms.entity.Room;
import com.instantrooms.service.BusinessService;
import com.instantrooms.service.RoomService;

@Controller
public class BusinessController {
	
	private static Logger log = LoggerFactory.getLogger(RoomController.class);
	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

	
	@Autowired
	BusinessService business_service;
	
	@Autowired
	RoomService roomService;
	
	@RequestMapping("/list_your_property")
		public String listpro() {
			return "/home/list_property";
		}
	
	
	@PostMapping("/businessUser")
	public String saveBusinesssUser(@RequestParam("name") String name, 
			                    @RequestParam("email") String email,
			                    @RequestParam("password") String password,
			                    @RequestParam("contactno") String Contact, BusinessUser businessUser) {
		
		businessUser.setName(name);
		businessUser.setEmail(email);
		businessUser.setPassword(password);
		businessUser.setContactNo(Contact);
		
		business_service.saveuser(businessUser);
		return "home/index";
	}
	
	
	@PostMapping("/list_property")
	public String listpro(@ModelAttribute("businessUser") BusinessUser businessUser) {
	BusinessUser oauthUser = business_service.login(businessUser.getEmail(), businessUser.getPassword());
	
	 if(Objects.nonNull(oauthUser))
	    {
	 
	    return "business/signup_bus";
	    
	    } else {
	    return "redirect:/list_your_property";
		
	}
	}
	
	
	
	
	@GetMapping("/logout_buss")
	public String logout() {
		return "redirect:/";
	}

	
}
	
