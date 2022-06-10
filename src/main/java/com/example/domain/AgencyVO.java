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
@Table(name = "agency")
public class AgencyVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "a_num")
	private Integer agencyNum;
	
	@Column(name = "a_category_num")
	private int agencyCategoryNum;
	
	@Column(name = "a_name", length = 200)
	private String agencyName;
	
	@Column(name = "a_content", length = 3000)	
	private String agencyContent;
	
	@Column(name = "a_address", length = 200)
	private String agencyAddress;
	
	@Column(name = "a_address2", length = 200)
	private String agencyAddress2;//상세주소
	
	@Column(name = "a_tel", length = 30)
	private String agencyTel;
	
	@Column(name = "a_lat", length = 30)
	private String agencyLat;
	
	@Column(name = "a_lon", length = 30)
	private String agencyLon;
	
	@Column(name = "a_image", length = 300)
	private String agencyImage;
	
	@Transient
	private int page;
	
	@Transient
	private double avgStars;

}
