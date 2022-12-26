package com.instantrooms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.instantrooms.entity.BookingRecord;
import com.instantrooms.service.FinalBillService;

@Controller
public class FinalBillController {
	
	@Autowired
	FinalBillService finalbillservice;
	
	@PostMapping("/successfull")
	public String BookingData(@RequestParam("name") String name,
			                   @RequestParam("email") String email,
			                    @RequestParam("contactno") String contactno,
			                    @RequestParam("room_id") String room_id,
			                    @RequestParam("checkin_date") String checkin_date,
			                    @RequestParam("checkout_date") String checkout_date,
			                    @RequestParam("total_rooms") String no_of_rooms,
			                    @RequestParam("total_bill") String final_bill, BookingRecord bookingrecord) {
		
		System.out.println(no_of_rooms);
		System.out.println(final_bill);
		
		finalbillservice.savebill(bookingrecord);
		
		return "/booking/successfull";
	}

}
