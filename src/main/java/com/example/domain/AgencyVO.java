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
	@Column(name = "aNum")
	private Integer a_num;
	
	@Column(name = "a_category_num")
	private int aCategoryNum;
	
	@Column(name = "a_name", length = 200)
	private String aName;
	
	@Column(name = "a_content", length = 3000)	
	private String aContent;
	
	@Column(name = "a_address", length = 200)
	private String aAddress;
	
	@Column(name = "a_tel", length = 30)
	private String aTel;
	
	@Column(name = "a_lat", length = 30)
	private String aLat;
	
	@Column(name = "a_lon", length = 30)
	private String aLon;
	
	@Column(name = "a_image", length = 300)
	private String aImage;

}
