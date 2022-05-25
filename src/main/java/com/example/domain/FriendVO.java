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
@Table(name = "friend")
public class FriendVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "friend_no")
	private Integer friendNo;

	@Column(length = 10,name = "user_sign")
	private String userSign;
	
	@ManyToOne
	@JoinColumn(name = "user_email")
	private UserVO user1;
	
	@ManyToOne
	@JoinColumn(name = "user_email1")
	private UserVO user2;
}
