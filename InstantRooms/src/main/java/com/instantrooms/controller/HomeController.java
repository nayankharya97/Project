package com.instantrooms.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.instantrooms.entity.Room;

import com.instantrooms.service.SearchService;

@Controller
public class HomeController {
	
	@Autowired
	SearchService searchService;
	
	@GetMapping("/")
	public String HomeIndex() {
		return "home/index";
	}
	
	@GetMapping("/business")
	public String business() {
		return "home/business";
	}
	
	
	 @GetMapping("/search")
	    public ModelAndView SearchRooms(@RequestParam("roomcount") String roomcount, @RequestParam("startdate") String startdate, @RequestParam("enddate") String enddate, @RequestParam("city") String city){	
		 ModelAndView mav = new ModelAndView("home/allrooms");
		// System.out.println(startdate);
		// System.out.println(enddate);
		 List<Room> rooms =  searchService.SearchRooms(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
	    }
	 
	 
	 
	 @GetMapping("/ascOrder")
	 public ModelAndView filterCityAndSortAsc(@RequestParam String city) {
                    ModelAndView mav = new ModelAndView("home/allrooms");
			    	 List<Room> rooms =  searchService.filterCityAndSortAsc(city);
				      mav.addObject("rooms", rooms);
					  mav.addObject("currentCity",city);
					  return mav;
			    	  
			      }
	 
	 @GetMapping("/applyfilter")
	 public ModelAndView filters(@RequestParam String city, @RequestParam(required = false) String[] facility) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.filterFacilities(city, facility);
	       mav.addObject("rooms", rooms);
	       mav.addObject("currentCity",city);
			return mav;
	 }
		 
	 
	 
	 @GetMapping("/desOrder")
	 public ModelAndView filterCityAndSortDesc(@RequestParam String city) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.filterCityAndSortDesc(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
		 
	 }
	 
	 @GetMapping("/starOrder")
	 public ModelAndView filterCityAndSortStar(@RequestParam String city) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.filterCityAndSortStar(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
		 
	 }
	 
	 
	 @GetMapping("/under1k")
	 public ModelAndView showUnder1k(@RequestParam String city) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.under1K(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
		 
	 }
	 
	 @GetMapping("/under2k")
	 public ModelAndView showUnder2k(@RequestParam String city) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.under2K(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
		 
	 }
	 
	 @GetMapping("/above2k")
	 public ModelAndView showAbove2k(@RequestParam String city) {
		 ModelAndView mav = new ModelAndView("home/allrooms");
		 List<Room> rooms =  searchService.above2K(city);
			mav.addObject("rooms", rooms);
			mav.addObject("currentCity",city);
			return mav;
		 
	 }
	 
	 
	 @GetMapping("/roomDetailPage")
	 public ModelAndView roomdetail(@RequestParam Long id) {
		 ModelAndView mav = new ModelAndView("home/roomDetailPage");
		 List<Room> room = searchService.findHotelById(id);
		 mav.addObject("room", room);
		 return mav;
	 }
		
	 
	 
	 @GetMapping("/contactUs")
		public String showContactPage() {
			return "home/contactUs";
		}
	 
	 @GetMapping("/aboutUs")
		public String showAboutPage() {
			return "home/aboutUs";
		}

	 @GetMapping("/footer")
		public String footer() {
			return "/template/footer";
		}
	 
}
