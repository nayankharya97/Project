package com.instantrooms.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.List;


import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.instantrooms.entity.Room;

import com.instantrooms.service.RoomService;

@Controller
//@RequestMapping("/image-upload")
public class RoomController {

	private static Logger log = LoggerFactory.getLogger(RoomController.class);
	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

	@Autowired
	RoomService roomService;
//	@Autowired
//	delrepo delrep;

	@GetMapping(value = { "/home",})
	public String homePage() {
		return "admin/index";
	}

	@GetMapping("/sign-up")
	public String showSignupPage() {
		return "admin/sign-up";
	}

	@PostMapping("/saveRoom")
	public @ResponseBody ResponseEntity<?> createRoom(@Valid Room room,
			@RequestParam("hotelname") final String hotelName,
			@RequestParam("managername") final String managerName,
			@RequestParam("manageremail") final String managerEmail,
			@RequestParam("address") final String address,
			@RequestParam("city") final String city,
			@RequestParam("state") final String state,
			@RequestParam("pincode") final String pinCode,
			@RequestParam("priceWithoutOffers") final int priceWithoutOffers,
			@RequestParam("priceWithOffers") final int priceWithOffers,
			@RequestParam("starRating") final int starRating,
			@RequestParam("facility") final String[] facility,
			final @RequestParam("file1") MultipartFile file1, 
			final @RequestParam("file2") MultipartFile file2, 
			final @RequestParam("file3") MultipartFile file3, 
			final @RequestParam("file4") MultipartFile file4,
			final @RequestParam("file5") MultipartFile file5,
			final @RequestParam("file6") MultipartFile file6,
			final @RequestParam("file7") MultipartFile file7,
			final @RequestParam("file8") MultipartFile file8) {
		try {
			HttpHeaders headers = new HttpHeaders();
			if (room == null) {
				return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
			
			String fileName1 = file1.getOriginalFilename();
			String filePath1 = Paths.get(uploadDirectory, fileName1).toString();
			
			String fileName2 = file2.getOriginalFilename();
			String filePath2 = Paths.get(uploadDirectory, fileName2).toString();
			
			String fileName3 = file3.getOriginalFilename();
			String filePath3 = Paths.get(uploadDirectory, fileName3).toString();
			
			String fileName4 = file4.getOriginalFilename();
			String filePath4 = Paths.get(uploadDirectory, fileName4).toString();
			
			String fileName5 = file5.getOriginalFilename();
			String filePath5 = Paths.get(uploadDirectory, fileName5).toString();
			
			String fileName6 = file6.getOriginalFilename();
			String filePath6 = Paths.get(uploadDirectory, fileName6).toString();
			
			String fileName7 = file7.getOriginalFilename();
			String filePath7 = Paths.get(uploadDirectory, fileName7).toString();
			
			String fileName8 = file8.getOriginalFilename();
			String filePath8 = Paths.get(uploadDirectory, fileName8).toString();
			
			String fileType = file1.getContentType();
			long size = file1.getSize();
			String fileSize = String.valueOf(size);
			Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());

//			log.info("Name: " + name);
//			log.info("FileName: " + file1.getOriginalFilename());
//			log.info("FileType: " + file1.getContentType());
//			log.info("FileSize: " + file1.getSize());

			// Save the file locally
			BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(new File(filePath1)));
			stream1.write(file1.getBytes());
			stream1.close();
			
			BufferedOutputStream stream2 = new BufferedOutputStream(new FileOutputStream(new File(filePath2)));
			stream2.write(file2.getBytes());
			stream2.close();
			
			BufferedOutputStream stream3 = new BufferedOutputStream(new FileOutputStream(new File(filePath3)));
			stream3.write(file3.getBytes());
			stream3.close();
			
			BufferedOutputStream stream4 = new BufferedOutputStream(new FileOutputStream(new File(filePath4)));
			stream4.write(file4.getBytes());
			stream4.close();
			
			BufferedOutputStream stream5 = new BufferedOutputStream(new FileOutputStream(new File(filePath5)));
			stream5.write(file5.getBytes());
			stream5.close();
			
			BufferedOutputStream stream6 = new BufferedOutputStream(new FileOutputStream(new File(filePath6)));
			stream6.write(file6.getBytes());
			stream6.close();
			
			BufferedOutputStream stream7 = new BufferedOutputStream(new FileOutputStream(new File(filePath7)));
			stream7.write(file7.getBytes());
			stream7.close();
			
			BufferedOutputStream stream8 = new BufferedOutputStream(new FileOutputStream(new File(filePath8)));
			stream8.write(file8.getBytes());
			stream8.close();
			
			
		//discount calculate....
			int x = priceWithoutOffers-priceWithOffers;
			float y = (float)x/priceWithoutOffers;
			float dis = 100*y;
			int discount = Math.round(dis);
			
			String myfac = "";
			for(int i=0; i<facility.length; i++) {
				
				myfac += facility[i]+", ";
			}
			
			room.setFacility(myfac);
			

			room.setHotelName(hotelName);
			room.setManagerName(managerName);
			room.setManagerEmail(managerEmail);
			room.setAddress(address);
			room.setCity(city);
			room.setState(state);
			room.setPinCode(pinCode);
			room.setPriceWithoutOffers(priceWithoutOffers);
			room.setPriceWithOffers(priceWithOffers);
			room.setStarRating(starRating);
			room.setDiscount(discount);

			
			room.setFileName1(fileName1);
			room.setFilePath1(filePath1);
			
			room.setFileName2(fileName2);
			room.setFilePath2(filePath2);
			
			room.setFileName3(fileName3);
			room.setFilePath3(filePath3);
			
			room.setFileName4(fileName4);
			room.setFilePath4(filePath4);
			
			room.setFileName5(fileName5);
			room.setFilePath5(filePath5);
			
			room.setFileName6(fileName6);
			room.setFilePath6(filePath6);
			
			room.setFileName7(fileName7);
			room.setFilePath7(filePath7);
			
			room.setFileName8(fileName8);
			room.setFilePath8(filePath8);
			
			
			room.setCreatedDate(currentTimestamp);

			boolean status = roomService.saveRoom(room);
			if (status) {
				log.info("Room Created");
				headers.add("Room Saved With Image - ", fileName1);
				return new ResponseEntity<>("<h1>Room Saved</h1>", HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.info("Exception: " + e);
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	}

	@GetMapping("/viewrooms")
	public ModelAndView showAllRooms() {
		log.info("Showing Room list with File.");
		ModelAndView mav = new ModelAndView("admin/viewrooms");
		List<Room> roomList = roomService.getAllRooms();
		mav.addObject("roomList", roomList);
		return mav;
	}
	
	@GetMapping("/allrooms")
	public ModelAndView showAllRooms1() {
		log.info("Showing Room list with File.");
		ModelAndView mav = new ModelAndView("home/allrooms");
		List<Room> rooms = roomService.getAllRooms();
		mav.addObject("rooms", rooms);
		return mav;
	}
	 
	 
	 @GetMapping("/delete")
		public ModelAndView delete(@RequestParam("id") Long id) {
		 //System.out.println(id);
			roomService.deleteroomById(id);
			ModelAndView mav = new ModelAndView("admin/viewrooms");
			List<Room> roomList = roomService.getAllRooms();
			mav.addObject("roomList", roomList);
			return mav;
		}
	 
	
}
