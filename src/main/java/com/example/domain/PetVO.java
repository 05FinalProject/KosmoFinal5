package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="pet")
public class PetVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pet_num;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;

	@Column(length = 100)
	private String pet_name;
	
	private int pet_age;
	
	@Column(length = 100)
	private String pet_gender;
	
	@Column(length = 100)
	private String pet_variety;
	
	@Column(length = 300)
	private String pet_qr;

}
