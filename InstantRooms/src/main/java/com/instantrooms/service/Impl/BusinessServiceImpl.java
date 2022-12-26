package com.instantrooms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.instantrooms.entity.BusinessUser;
import com.instantrooms.repository.BusinessRepository;
import com.instantrooms.service.BusinessService;

@Service
@Transactional
public class BusinessServiceImpl implements BusinessService{
	
	@Autowired
	BusinessRepository business_repository;

	@Override
	public void saveuser(BusinessUser businessUser) {
	    this.business_repository.save(businessUser);
		
	}

	@Override
	public BusinessUser login(String email, String password) {
		BusinessUser businessUser = null;
		if (email != null && password != null) {
			businessUser = business_repository.findByEmailAndPassword(email, password);
		}
		return businessUser;
	}


}
