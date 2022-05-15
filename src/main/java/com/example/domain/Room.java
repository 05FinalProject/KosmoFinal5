package com.example.domain;

import lombok.Data;

@Data
public class Room {
	int roomNumber;
	String roomName;
	private String id;
	
	
	
	/*
	 * @Override public String toString() { return "Room [roomNumber=" + roomNumber
	 * + ", roomName=" + roomName + "]"; }
	 */
}
