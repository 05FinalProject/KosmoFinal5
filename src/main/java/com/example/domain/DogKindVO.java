package com.example.domain;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "dog_kind")
public class DogKindVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dog_num;
	
	@Column(length = 200)
	private String dog_kind;

	@Column(length = 50)
	private String dog_local;
	
	@Column(length = 30)
	private String dog_height;
	
	@Column(length = 30)
	private String dog_weight;
	
	@Column(length = 5000)
	private String dog_information;
	
	@Column(length = 100)
	private String dog_image;
	
}
