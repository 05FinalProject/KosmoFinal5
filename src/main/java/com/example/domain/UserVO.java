package com.example.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name = "user")
public class UserVO {
	@Id
	@Column(length = 100)
	private String user_email;
	
	@Column(length = 100)
	private String user_name;
	
	@Column(length = 100)
	private String user_phone;
	
	@Column(length = 100)
	private String user_address;
	
	@Column(length = 100)
	private String user_gender;
	
	@Column(length = 100)
	private String user_admin;
	
	@Column(length = 100)
	private String user_black;
	
	@Column(length = 100)
	private String user_nickname;
	
	@Column(insertable = false,updatable = false)
	@Temporal(TemporalType.DATE)
	private Date user_logout_time;
	
	@Column(insertable = false,updatable = false, columnDefinition = "date default (current_date)")
	@Temporal(TemporalType.DATE)
	private Date user_signup;
	
	
}
