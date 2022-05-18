package com.example.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name = "review")
public class ReviewVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer review_num;
	
	@ManyToOne
	@JoinColumn(name = "u_email")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name = "a_num")
	private AgencyVO agency;
	
	@Column(length = 500)
	private String review_content;
	
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)")
	@Temporal(TemporalType.DATE)
	private Date review_insertdate;
	
	@Column(length = 10)
	private String review_star;
}
