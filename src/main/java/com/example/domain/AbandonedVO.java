package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "abandoned")
public class AbandonedVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ab_no;
	
	@Column(length = 200)
	private String ab_name;
	@Column(length = 200)
	private String ab_kind;
	private int ab_age;
	@Column(length = 200)
	private String ab_gender;
	@Column(length = 200)
	private String ab_image;
	
}
