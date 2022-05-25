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
	@Column(name = "dog_num")
	private Integer dogNum;
	
	@Column(length = 200,name = "dog_kind")
	private String dogKind;

	@Column(length = 50,name = "dog_local")
	private String dogLocal;
	
	@Column(length = 30,name = "dog_height")
	private String dogHeight;
	
	@Column(length = 30,name = "dog_weight")
	private String dogWeight;
	
	@Column(length = 5000,name = "dog_information")
	private String dogInformation;
	
	@Column(length = 100,name = "dog_image")
	private String dogImage;
	
}
