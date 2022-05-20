package com.example.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
public class BadgeVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer b_id;
	private String b_log;
	private String b_first;
	private String b_fwalk;
	private String b_pet;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;
}
