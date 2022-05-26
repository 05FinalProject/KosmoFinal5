package com.example.domain;

import javax.persistence.Column;
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
	@Column(name = "b_id")
	private Integer bId;
	@Column(name = "b_log")
	private String bLog;
	@Column(name = "b_first")
	private String bFirst;
	@Column(name = "b_fwalk")
	private String bFwalk;
	@Column(name = "b_pet")
	private String bPet;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;
}
