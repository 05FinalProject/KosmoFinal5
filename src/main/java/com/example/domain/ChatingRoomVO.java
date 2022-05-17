package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Entity
@Table(name = "chating_room")
public class ChatingRoomVO {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "room_seq")
	private Integer roomSeq;
	
	@Column(name = "room_num")
	private int roomNumber;
	
	@Column(name = "room_name", length = 100)
	private String roomName;
	
	@Column(name = "room_member", length = 100)
	private String roomMember;
	
	@Transient
	private String id;
	
	@Transient
	private int count;
	
	public ChatingRoomVO() {}
	
	

}
