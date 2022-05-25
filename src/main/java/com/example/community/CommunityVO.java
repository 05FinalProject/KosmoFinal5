package com.example.community;

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

import com.example.domain.UserVO;

import lombok.Data;

@Data
@Entity
@Table(name="community")
public class CommunityVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer c_num;
	
	@Column(length = 200)
	private String c_title;
	
	@Column(length = 3000)
	private String c_content;
	
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)")
	@Temporal(TemporalType.DATE)
	private Date c_insertdate;
	
	@Column(insertable = false,updatable = false)
	@Temporal(TemporalType.DATE)
	private Date c_updatedate;
	
	@ManyToOne
	@JoinColumn(name = "user_email")
	private UserVO user;
	
	//---------------------------------------------
	private String c_filename;
	
	private String c_filepath;
	

}
