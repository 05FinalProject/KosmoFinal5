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
@Table(name = "agency")
public class AgencyVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer a_num;
	
	@Id
	private int a_category_num;	
	
	@Column(length = 200)
	private String a_name;
	
	@Column(length = 3000)	
	private String a_content;
	
	@Column(length = 200)
	private String a_address;
	
	@Column(length = 30)
	private String a_tel;
	
	@Column(length = 30)
	private String a_lat;
	
	@Column(length = 30)
	private String a_lon;
	
	@Column(length = 300)
	private String a_image;

}
