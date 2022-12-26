package com.instantrooms.repository;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.instantrooms.entity.User;

@Repository
@Transactional
public class UserRepository {
	
	@PersistenceContext
	private EntityManager entityManager;

	public void save(User user) {
		entityManager.persist(user);
	}

	public User findByEmailAndPassword(String email, String password) {
		try {
			return (User) entityManager.createQuery("from User where email = :email and password = :password")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
			      
		} catch (NoResultException e) {
		}
		return null;

	}

	public User findByEmail(String email) {
		try {
			return (User) entityManager.createQuery("from User where email = :email").setParameter("email", email)
					.getSingleResult();
		} catch (NoResultException e) {
		}
		return null;

	}

}
