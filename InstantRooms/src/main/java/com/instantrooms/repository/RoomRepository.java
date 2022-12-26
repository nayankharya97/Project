package com.instantrooms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.instantrooms.entity.Room;


public interface RoomRepository extends JpaRepository<Room, Long> {
	
    @Query("SELECT r FROM Room r")
    List<Room> findAll();
    
//    @Query(value = "DELETE FROM Room WHERE id = :id", nativeQuery = true)
//    public void deleteById(Long id);
}


