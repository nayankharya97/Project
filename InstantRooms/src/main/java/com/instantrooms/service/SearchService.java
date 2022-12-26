package com.instantrooms.service;


import java.util.List;

import com.instantrooms.entity.Room;
import com.instantrooms.entity.User;

public interface SearchService {
	
	 List<Room> SearchRooms(String city);
	 
	 List<Room> filterCityAndSortAsc(String city);
	 
	 List<Room> filterCityAndSortDesc(String city);
	 
	 List<Room> filterCityAndSortStar(String city);
	 
	 List<Room> filterFacilities(String filterCity, String[] allFac);

	 List<Room> findHotelById(Long hotelid);

	List<Room> under1K(String city);
	
	List<Room> under2K(String city);
	
	List<Room> above2K(String city);

	List<Room> roomdetail(Long id);


}
