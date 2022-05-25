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
@Table(name="friend_chating")
public class FriendChatingVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "chating_no")
	private Integer chatingNo;
	
	@Column(length = 500,name = "chating_message")
	private String chatingMessage;
	
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)",name = "chating_time")
	@Temporal(TemporalType.DATE)
	private Date chatingTime;
	
	@Column(length = 10,name = "chating_sign")
	private String chatingSign;
	
	@ManyToOne
	@JoinColumn(name="friend_no")
	private FriendVO friend;

}
