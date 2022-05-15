package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Entity(name = "chating_room")
public class ChatingRoomVO {
	@Id
	private int room_num;
	private String room_name;
	private String room_member;

}
