package com.instantrooms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.instantrooms.entity.BookingRecord;

public interface FinalBillRepository extends JpaRepository<BookingRecord, Long> {

}
