package com.example.domain;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "user")
public class UserVO {
	@Id
	@Column(length = 100,name = "user_email")
	private String userEmail;
	
	@Column(length = 100,name = "user_name")
	private String userName;
	
	@Column(length = 100,name = "user_pass")
	private String userPass;
	
	@Column(length = 100,name = "user_phone")
	private String userPhone;
	
	@Column(length = 100,name = "user_address")
	private String userAddress;
	
	@Column(length = 100,name = "user_gender")
	private String userGender;
	
	@Column(length = 100,name = "user_admin")
	private String userAdmin;
	
	@Column(length = 100,name = "user_black")
	private String userBlack;
	
	@Column(name="user_nickname",length = 100)
	private String userNickname;
	
	@Column(insertable = false,updatable = false,name = "user_logout_time")
	@Temporal(TemporalType.DATE)
	private Date userLogoutTime;
	
	@Column(insertable = false,updatable = false, columnDefinition = "date default (current_date)",name = "user_signup")
	@Temporal(TemporalType.DATE)
	private Date userSignup;
	
	@Transient
	private String addr1;
	
	@Transient
	private String addr2;
	
	@Transient
	private String addr3;
	
	@Transient
	private int page;
	
}
