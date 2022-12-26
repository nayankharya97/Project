package com.instantrooms.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.instantrooms.entity.BusinessUser;

@Repository
public interface BusinessRepository extends JpaRepository<BusinessUser, Long>{

	BusinessUser findByEmailAndPassword(String email, String password);

	

}
