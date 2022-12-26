package com.instantrooms.service;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.Model;

import com.instantrooms.entity.Room;

public interface RoomService {
 
	public boolean saveRoom(Room room) throws IOException;
	
	public List<Room> getAllRooms();

	public void deleteRoom(Room room);
	
	Room findRoomById(Long id);
	
	public void delroom(Long id);
	
	public void deleteroomById(Long id);
	
}
