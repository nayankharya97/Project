package com.instantrooms.service;

import com.instantrooms.entity.BusinessUser;

public interface BusinessService {

	public void saveuser(BusinessUser businessUser);

	 BusinessUser login(String email, String password);

}
