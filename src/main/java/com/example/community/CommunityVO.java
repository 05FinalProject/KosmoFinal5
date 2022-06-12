package com.example.community;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;
import com.fasterxml.jackson.annotation.JsonIgnore;

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
	
	@CreationTimestamp
	@Column(name="c_insertdate")
	@Temporal(TemporalType.TIMESTAMP)
	private Date communityInsertdate;


	@CreationTimestamp
	@Column(name="c_updatedate")
	@Temporal(TemporalType.TIMESTAMP)
	private Date communityUpdatedate;
	
	@Column(name="c_state")
	private Integer communityState;
	
	@ManyToOne
	@JoinColumn(name = "user_email")
	private UserVO user;
	
//	 @JsonIgnore
//	 @OneToMany
//	 private List<ImgVO> imgList;
	 
	
	@Transient
	private int page;
}
