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
@Table(name="comment")
@Entity
public class CommentVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int comment_num;

	@ManyToOne
	@JoinColumn(name="u_email")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name="c_num")
	private CommunityVO community;
		
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)")
	@Temporal(TemporalType.DATE)
	private Date comment_insertdate;
	
	@Column(length = 100)
	private String comment_content;
}
