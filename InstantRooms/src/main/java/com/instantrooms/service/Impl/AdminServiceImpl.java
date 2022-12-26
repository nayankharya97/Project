package com.instantrooms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.instantrooms.entity.Admin;
import com.instantrooms.repository.AdminRepository;
import com.instantrooms.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminRepository adminRepository;
	
	  
	  public Admin login(String email, String password) {
	  Admin admin = adminRepository.findByEmailAndPassword(email, password);
	   return admin;
	  }
}
