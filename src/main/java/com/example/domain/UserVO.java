package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "user")
public class UserVO {
	@Id
	private String user_email;
	private String user_name;
	private String user_phone;
	private String user_address;
	private String user_gender;
	private String user_admin;
	private String user_black;
	private String user_nickname;
	private String user_logout_time;
	
	
}
