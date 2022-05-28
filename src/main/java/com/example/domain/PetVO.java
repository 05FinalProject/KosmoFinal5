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
	@Column(name = "pet_num")
	private Integer petNum;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;

	@Column(length = 100,name = "pet_name")
	private String petName;
	
	@Column(name = "pet_age")
	private int petAge;
	
	@Column(length = 100,name = "pet_gender")
	private String petGender;
	
	@Column(length = 100,name = "pet_variety")
	private String petVariety;
	
	@Column(length = 300,name = "pet_qr")
	private String petQr;

}
