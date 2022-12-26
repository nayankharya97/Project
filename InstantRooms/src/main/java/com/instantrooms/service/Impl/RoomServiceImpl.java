package com.instantrooms.service.Impl;

import java.io.IOException;
import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.instantrooms.entity.Room;
import com.instantrooms.repository.DeleteRepository;
import com.instantrooms.repository.RoomRepository;
import com.instantrooms.service.RoomService;

@Service
@Transactional
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomRepository roomRepository;
	@Autowired
	DeleteRepository deleteRepository;
	

	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

	@Override
	public boolean saveRoom(Room room) throws IOException {
		try {
			if (room != null) {
				roomRepository.save(room);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;

	}

	@Override
	public List<Room> getAllRooms() {
		List<Room> room =  roomRepository.findAll();
		return room;
	}

	
	
	@Override
	public void deleteRoom(Room room) {
		if (room != null)
			deleteRepository.deleteRoom(room);

	}
	
	@Override
	public Room findRoomById(Long id) {
		if (id != null)
			return deleteRepository.findRoomById(id);
		return null;
	}

	@Override
	public void delroom(Long id) {
		roomRepository.deleteById(id);
	}
	
	
	public void deleteroomById(Long id) {
		roomRepository.deleteById(id);
	}
	
	
}
