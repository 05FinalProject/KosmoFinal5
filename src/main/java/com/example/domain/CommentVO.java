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

import com.example.community.*;

import lombok.Data;

@Data
@Entity
@Table(name="comment")
public class CommentVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "comment_num")
	private Integer commentNum;

	@ManyToOne
	@JoinColumn(name="u_email")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name="c_num")
	private CommunityVO community;
		
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)",name = "comment_insertdate")
	@Temporal(TemporalType.DATE)
	private Date commentInsertdate;
	
	@Column(length = 100,name = "comment_content")
	private String commentContent;
}
