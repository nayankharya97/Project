package com.instantrooms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.instantrooms.entity.BookingRecord;
import com.instantrooms.repository.FinalBillRepository;
import com.instantrooms.service.FinalBillService;

@Service
@Transactional
public class FinalBillServiceImpl implements FinalBillService {
	
	@Autowired
	FinalBillRepository finalBillRepository;

	@Override
	public void savebill(BookingRecord bookingrecord) {
		finalBillRepository.save(bookingrecord);
		
	}

}
