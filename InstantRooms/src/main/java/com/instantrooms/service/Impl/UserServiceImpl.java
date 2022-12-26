package com.instantrooms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.instantrooms.entity.User;
import com.instantrooms.repository.UserRepository;
import com.instantrooms.service.UserService;


@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepository;

	@Override
	public void save(User user) {
		if (user != null) {
			userRepository.save(user);
		}

	}

	@Override
	public User findByEmailAndPassword(String email, String password) {
		User user = null;
		if (email != null && password != null) {
			user = userRepository.findByEmailAndPassword(email, password);
		}
		return user;
	}

	@Override
	public User findByEmail(String email) {
		if (email != null) {
			return userRepository.findByEmail(email);
		}
		return null;
	}

}
