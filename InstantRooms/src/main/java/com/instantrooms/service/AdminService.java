package com.instantrooms.service;


import com.instantrooms.entity.Admin;

public interface AdminService {
	
	
	Admin login(String email, String password);

}
