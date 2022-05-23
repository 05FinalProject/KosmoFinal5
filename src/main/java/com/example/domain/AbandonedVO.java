package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "abandoned")
public class AbandonedVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ab_no")
	private Integer abNo;
	
	@Column(length = 200)
	private String ab_name;
	@Column(length = 200)
	private String ab_kind;
	@Column(length = 200)
	private String ab_age;
	@Column(length = 20)
	private String ab_gender;
	@Column(length = 200)
	private String ab_image;
	
	@Transient
	private int page;
	
}
