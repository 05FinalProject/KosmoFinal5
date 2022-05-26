package com.example.walk;

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
@Table(name="walk")
public class WalkVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer walkId;
	
	@Column(columnDefinition = "TEXT")
	private String walkLat;
	
	@Column(columnDefinition = "TEXT")
	private String walkLon;
	
	private Long walkTime;
	
	private Long walkDistance;
	
	@Temporal(TemporalType.TIME)
	private Date walkStart;
	
	@Temporal(TemporalType.TIME)
	private Date walkEnd;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;

	
	
	

}
