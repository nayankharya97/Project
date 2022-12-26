package com.instantrooms.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.instantrooms.entity.Room;
import com.instantrooms.entity.User;
import com.instantrooms.service.SearchService;
import com.instantrooms.service.UserService;

	
	@Controller
	public class BookingController {

		@Autowired
		UserService userService;

		@Autowired
		SearchService searchService;

		@RequestMapping("/book")
		public String index(HttpServletRequest request) {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("currentUser");
//			if (user != null)
//				return "redirect:/home";
			return "booking/userlogin";
		}

//		@GetMapping("/home")
//		public String getHomePage(Model model, HttpServletRequest request) {
//			HttpSession session = request.getSession();
//			User user = (User) session.getAttribute("currentUser");
//			if (user == null)
//				return "redirect:/";
//			else {
//				model.addAttribute("contacts", contactDao.getUserContacts(user));
//			}
//			return "home";
//		}

		@PostMapping("/generateBill")
		public String loginUser(@RequestParam(value = "login") String email, @RequestParam("password") String password, @RequestParam("hotelid") Long hotelid,             
				HttpServletRequest request, Model model) {
			//System.out.println("hotel id= "+ hotelid);
			String page = null;
			HttpSession session = request.getSession();
			List<Room> room = searchService.findHotelById(hotelid);
			User user = userService.findByEmailAndPassword(email, password);
			if (user != null) {
				session.setAttribute("currentUser", user);
				model.addAttribute("currentUseremail", email);
				model.addAttribute("currentUsername", user.getName());
				model.addAttribute("currentUserno", user.getContactno());
				model.addAttribute("room",room);
				page = "booking/generateBill";
			} else {
				model.addAttribute("loginError", true);
				model.addAttribute("loginValue", email);
				page = "booking/userlogin";
			}
			return page;
		}

		@GetMapping("/userlogout")
		public String logout(HttpServletRequest request) {
			HttpSession session = request.getSession();
			session.invalidate();
			return "redirect:/book";
		}
		
		
		
		@GetMapping("/registration")
		public String getRegistrationPage(Model model) {
			User user = new User();
			model.addAttribute("newUser", user);
			return "booking/newRegistration";
		}

		@PostMapping("/registration")
		public String registerUser(@ModelAttribute("newUser") @Valid User user, BindingResult result,
				HttpServletRequest request, Model model) {
			if (result.hasErrors()) {
				return "booking/newRegistration";
			}
			User existingUser = userService.findByEmail(user.getEmail());
			if (existingUser != null) {
				model.addAttribute("loginError", true);
				return "booking/newRegistration";
			}
			HttpSession session = request.getSession();
			{
				userService.save(user);
				session.setAttribute("currentUser", user);
				//return "redirect:/book";
				return "booking/userlogin";
			}
		}
		
		
	

	}

