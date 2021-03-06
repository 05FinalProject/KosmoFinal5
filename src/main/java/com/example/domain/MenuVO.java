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
@Table(name = "menu")
public class MenuVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "m_no")
	private Integer mNo;
	
	@ManyToOne
	@JoinColumn(name = "a_num")
	private AgencyVO agency;
	
	@Column(length = 100,name = "m_name")
	private String mName;
	@Column(length = 100,name = "m_price")
	private int mPrice;
	
}
