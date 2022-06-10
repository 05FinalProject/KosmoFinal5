package com.example.mail;

import javax.persistence.Transient;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class MailDto {	
	
	@Transient
	private String address;
	
	@Transient
	private String title;
	
	@Transient
	private String message;
}
