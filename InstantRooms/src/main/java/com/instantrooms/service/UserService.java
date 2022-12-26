package com.instantrooms.service;

import com.instantrooms.entity.User;

public interface UserService {
	
	void save(User user);

	User findByEmailAndPassword(String email, String password);

	User findByEmail(String email);

}
