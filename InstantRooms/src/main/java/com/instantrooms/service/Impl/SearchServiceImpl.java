package com.instantrooms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.instantrooms.entity.Room;
import com.instantrooms.entity.User;
import com.instantrooms.repository.SearchRepository;
import com.instantrooms.service.SearchService;

@Service
@Transactional
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	SearchRepository searchRepository;
	
	
    public List<Room> SearchRooms(String city) {
        List<Room> rooms = searchRepository.searchRoomsByName(city);
        return rooms;
    }
    
    public List<Room> filterCityAndSortAsc(String city) {
         List<Room> rooms = searchRepository.OrderBypriceAsc(city);
         return rooms;
        
    }
    
    public List<Room> filterCityAndSortDesc(String city) {
        List<Room> rooms = searchRepository.OrderBypriceDesc(city);
        return rooms;
       
   }
    
    public List<Room> filterCityAndSortStar(String city) {
        List<Room> rooms = searchRepository.OrderBypriceStar(city);
        return rooms;
       
   }

	

	@Override
	public List<Room> filterFacilities(String filterCity, String[] allFac) {
		
		int count = allFac.length;
		
		if(count==1) {
			String fac1 = allFac[0];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1);
			return rooms;
		}else if(count==2) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2);
			return rooms;
		}
		else if(count==3) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3);
			return rooms;
		}else if(count==4) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4);
			return rooms;
		}else if(count==5) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			String fac5 = allFac[4];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4, fac5);
			return rooms;
		}else if(count==6) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			String fac5 = allFac[4];
			String fac6 = allFac[5];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4, fac5, fac6);
			return rooms;
		}else if(count==7) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			String fac5 = allFac[4];
			String fac6 = allFac[5];
			String fac7 = allFac[6];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4, fac5, fac6, fac7);
			return rooms;
		}else if(count==8) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			String fac5 = allFac[4];
			String fac6 = allFac[5];
			String fac7 = allFac[6];
			String fac8 = allFac[7];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4, fac5, fac6, fac7, fac8);
			return rooms;
		}else if(count==9) {
			String fac1 = allFac[0];
			String fac2 = allFac[1];
			String fac3 = allFac[2];
			String fac4 = allFac[3];
			String fac5 = allFac[4];
			String fac6 = allFac[5];
			String fac7 = allFac[6];
			String fac8 = allFac[7];
			String fac9 = allFac[8];
			List<Room> rooms = searchRepository.applyfilters(filterCity, fac1, fac2, fac3, fac4, fac5, fac6, fac7, fac8, fac9);
			return rooms;
		}
		else {
			System.out.println("Something went wrong....");
		}
		return null;
	}

	@Override
	public List<Room> findHotelById(Long hotelid) {
		List<Room> room = searchRepository.searchById(hotelid);
		return room;
	}

	@Override
	public List<Room> under1K(String city) {
		List<Room> room = searchRepository.under1k(city);
		return room;
	}
	
	@Override
	public List<Room> under2K(String city) {
		List<Room> room = searchRepository.under2k(city);
		return room;
	}
	
	@Override
	public List<Room> above2K(String city) {
		List<Room> room = searchRepository.above2k(city);
		return room;
	}

	@Override
	public List<Room> roomdetail(Long id) {
		List<Room> room = searchRepository.roomdetail(id);
		return room;
	}

	


}
