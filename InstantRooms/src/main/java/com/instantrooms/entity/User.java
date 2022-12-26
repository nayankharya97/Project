package com.instantrooms.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
public class User implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	
	private String contactno;
	

	@Size(min = 4, max = 30, message = "This is required field min 4 symbols")
	private String name;
	
	@Size(min = 3, max = 30, message = "This is required field")
	@Pattern(regexp = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$", message = "valid email formate only")
	private String email;

	@Size(min = 5, max = 50, message = "This is required field and min 5 symbols")
	private String password;
	

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public User(Integer userId, String contactno,
			@Size(min = 5, max = 30, message = "This is required field min 5 symbols") String name,
			@Size(min = 3, max = 30, message = "This is required field") @Pattern(regexp = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$", message = "valid email formate only") String email,
			@Size(min = 5, max = 50, message = "This is required field and min 5 symbols") String password) {
		super();
		this.userId = userId;
		this.contactno = contactno;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}




}
