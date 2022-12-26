package com.instantrooms.repository;



import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;


import com.instantrooms.entity.Room;

@Repository
@Transactional
public class DeleteRepository {
	
	
	@PersistenceContext
	private EntityManager entityManager;
	
	
	public void deleteRoom(Room room) {
		if (entityManager.contains(room))
			entityManager.remove(room);
	}

	

	public Room findRoomById(Long id) {
		try {
			return (Room) entityManager.createQuery("from room where id =:id")
					.setParameter("id", id).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;

	}




}
