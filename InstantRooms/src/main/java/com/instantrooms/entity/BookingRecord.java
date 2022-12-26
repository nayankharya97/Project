package com.instantrooms.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BookingRecord {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String name;
	private String email;
	private String contactno;
	private String room_id;
	private String checkin_date;
	private String checkout_date;
	private String no_of_rooms;
	private String final_bill;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}
	public String getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}
	public String getNo_of_rooms() {
		return no_of_rooms;
	}
	public void setNo_of_rooms(String no_of_rooms) {
		this.no_of_rooms = no_of_rooms;
	}
	public String getFinal_bill() {
		return final_bill;
	}
	public void setFinal_bill(String final_bill) {
		this.final_bill = final_bill;
	}
	public BookingRecord(Long id, String name, String email, String contactno, String room_id, String checkin_date,
			String checkout_date, String no_of_rooms, String final_bill) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contactno = contactno;
		this.room_id = room_id;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.no_of_rooms = no_of_rooms;
		this.final_bill = final_bill;
	}
	public BookingRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "BookingRecord [id=" + id + ", name=" + name + ", email=" + email + ", contactno=" + contactno
				+ ", room_id=" + room_id + ", checkin_date=" + checkin_date + ", checkout_date=" + checkout_date
				+ ", no_of_rooms=" + no_of_rooms + ", final_bill=" + final_bill + "]";
	}
	
	
	

}
