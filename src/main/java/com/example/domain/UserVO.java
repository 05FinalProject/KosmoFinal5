package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

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
	@Column(length = 100)
	private String user_logout_time;
	
	
}
