package com.instantrooms.entity;

import java.sql.Timestamp;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Room {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String hotelName;
	
	private String managerName;
	
	private String managerEmail;
	
	private String address;
	
	private String city;
	
	private String state;
	
	private String pinCode;
	
	private int priceWithoutOffers;
	
	private int priceWithOffers;
	
	private int starRating;
	
	private int discount;
	
	private String facility;
	
	private String fileName1;
	
	private String filePath1;
	
	private String fileName2;
	
	private String filePath2;
	
	private String fileName3;
	
	private String filePath3;
	
	private String fileName4;
	
	private String filePath4;
	
	private String fileName5;
	
	private String filePath5;
	
    private String fileName6;
	
	private String filePath6;
	
    private String fileName7;
	
	private String filePath7;
	
    private String fileName8;
	
	private String filePath8;
	
	private Timestamp createdDate;
	
	private String fileName;
	
   
	public void setFileName() {
		fileName = fileName1;
	}
	
	public String getFileName() {
		return fileName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getManagerEmail() {
		return managerEmail;
	}

	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public int getPriceWithoutOffers() {
		return priceWithoutOffers;
	}

	public void setPriceWithoutOffers(int priceWithoutOffers) {
		this.priceWithoutOffers = priceWithoutOffers;
	}

	public int getPriceWithOffers() {
		return priceWithOffers;
	}

	public void setPriceWithOffers(int priceWithOffers) {
		this.priceWithOffers = priceWithOffers;
	}

	public int getStarRating() {
		return starRating;
	}

	public void setStarRating(int starRating) {
		this.starRating = starRating;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String getFileName1() {
		return fileName1;
	}

	public void setFileName1(String fileName1) {
		this.fileName1 = fileName1;
	}

	public String getFilePath1() {
		return filePath1;
	}

	public void setFilePath1(String filePath1) {
		this.filePath1 = filePath1;
	}

	public String getFileName2() {
		return fileName2;
	}

	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}

	public String getFilePath2() {
		return filePath2;
	}

	public void setFilePath2(String filePath2) {
		this.filePath2 = filePath2;
	}

	public String getFileName3() {
		return fileName3;
	}

	public void setFileName3(String fileName3) {
		this.fileName3 = fileName3;
	}

	public String getFilePath3() {
		return filePath3;
	}

	public void setFilePath3(String filePath3) {
		this.filePath3 = filePath3;
	}

	public String getFileName4() {
		return fileName4;
	}

	public void setFileName4(String fileName4) {
		this.fileName4 = fileName4;
	}

	public String getFilePath4() {
		return filePath4;
	}

	public void setFilePath4(String filePath4) {
		this.filePath4 = filePath4;
	}

	public String getFileName5() {
		return fileName5;
	}

	public void setFileName5(String fileName5) {
		this.fileName5 = fileName5;
	}

	public String getFilePath5() {
		return filePath5;
	}

	public void setFilePath5(String filePath5) {
		this.filePath5 = filePath5;
	}

	public String getFileName6() {
		return fileName6;
	}

	public void setFileName6(String fileName6) {
		this.fileName6 = fileName6;
	}

	public String getFilePath6() {
		return filePath6;
	}

	public void setFilePath6(String filePath6) {
		this.filePath6 = filePath6;
	}

	public String getFileName7() {
		return fileName7;
	}

	public void setFileName7(String fileName7) {
		this.fileName7 = fileName7;
	}

	public String getFilePath7() {
		return filePath7;
	}

	public void setFilePath7(String filePath7) {
		this.filePath7 = filePath7;
	}

	public String getFileName8() {
		return fileName8;
	}

	public void setFileName8(String fileName8) {
		this.fileName8 = fileName8;
	}

	public String getFilePath8() {
		return filePath8;
	}

	public void setFilePath8(String filePath8) {
		this.filePath8 = filePath8;
	}

	public Timestamp getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	public Room(Long id, String hotelName, String managerName, String managerEmail, String address, String city,
			String state, String pinCode, int priceWithoutOffers, int priceWithOffers, int starRating, int discount,
			String facility, String fileName1, String filePath1, String fileName2, String filePath2, String fileName3,
			String filePath3, String fileName4, String filePath4, String fileName5, String filePath5, String fileName6,
			String filePath6, String fileName7, String filePath7, String fileName8, String filePath8,
			Timestamp createdDate) {
		super();
		this.id = id;
		this.hotelName = hotelName;
		this.managerName = managerName;
		this.managerEmail = managerEmail;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.priceWithoutOffers = priceWithoutOffers;
		this.priceWithOffers = priceWithOffers;
		this.starRating = starRating;
		this.discount = discount;
		this.facility = facility;
		this.fileName1 = fileName1;
		this.filePath1 = filePath1;
		this.fileName2 = fileName2;
		this.filePath2 = filePath2;
		this.fileName3 = fileName3;
		this.filePath3 = filePath3;
		this.fileName4 = fileName4;
		this.filePath4 = filePath4;
		this.fileName5 = fileName5;
		this.filePath5 = filePath5;
		this.fileName6 = fileName6;
		this.filePath6 = filePath6;
		this.fileName7 = fileName7;
		this.filePath7 = filePath7;
		this.fileName8 = fileName8;
		this.filePath8 = filePath8;
		this.createdDate = createdDate;
	}

	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
