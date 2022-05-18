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
	private Integer chating_no;
	
	@Column(length = 500)
	private String chating_message;
	
	@Column(insertable = false,updatable = false,columnDefinition = "date default (current_date)")
	@Temporal(TemporalType.DATE)
	private Date chating_time;
	
	@Column(length = 10)
	private String chating_sign;
	
	@ManyToOne
	@JoinColumn(name="friend_no")
	private FriendVO friend;

}
