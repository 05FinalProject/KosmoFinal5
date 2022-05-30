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
import javax.persistence.Transient;

import com.example.domain.UserVO;

import lombok.Data;

@Data
@Entity
@Table(name="community")
public class CommunityVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="c_num")
	private Integer communityNum;
	
	@Column(length = 200, name="c_title")
	private String communityTitle;
	
	@Column(length = 3000, name="c_content")
	private String communityContent;
	
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)", name="c_insertdate")
	@Temporal(TemporalType.DATE)
	private Date communityInsertdate;
	
	@Column(insertable = false,updatable = false, name="c_updatedate")
	@Temporal(TemporalType.DATE)
	private Date communityUpdatedate;
	
	@ManyToOne
	@JoinColumn(name = "user_email")
	private UserVO user;
	

	@Transient
	private int page;
}
