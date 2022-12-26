package com.instantrooms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.management.loading.PrivateClassLoader;
import javax.persistence.Entity;

@Entity
public class BusinessUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String Name;
	private String email;
	private String password;
	private String contactNo;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public BusinessUser(Long id, String name, String email, String password, String contactNo) {
		super();
		this.id = id;
		Name = name;
		this.email = email;
		this.password = password;
		this.contactNo = contactNo;
	}
	public BusinessUser() {
		super();
		// TODO Auto-generated constructor stub
	}	

}
