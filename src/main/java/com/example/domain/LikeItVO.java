package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.example.community.CommunityVO;

import lombok.Data;

@Data
@Entity
@Table(name="likeIt")
public class LikeItVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "like_num")
	private Integer likeNum;
	
	
	@Column(name="like_state")
	private Integer likeState;
	
	
	@ManyToOne
	@JoinColumn(name="u_email")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name="c_num")
	private CommunityVO community;
	
	
	
	

}
