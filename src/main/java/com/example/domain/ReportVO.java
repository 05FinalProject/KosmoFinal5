package com.example.domain;

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
@Table(name="report")
public class ReportVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int r_num;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name="c_num")
	private CommunityVO community;
	
	@ManyToOne
	@JoinColumn(name="comment_num")
	private CommentVO comment;
	
	@ManyToOne
	@JoinColumn(name="review_num")
	private ReviewVO review;
	

}
