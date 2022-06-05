package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	
	@Column(length = 200,name="ab_name")
	private String abName;
	@Column(length = 200,name="ab_kind" )
	private String abKind;
	@Column(length = 200,name="ab_age")
	private String abAge;
	@Column(length = 20,name="ab_gender")
	private String abGender;
	@Column(length = 200,name="ab_image")
	private String abImage;
	
	@Transient
	private int page;
	
	
}
