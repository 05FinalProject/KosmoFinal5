package com.example.domain;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "dog_kind")
public class DogKindVO {
	@Id
	private String dog_kind;
	@Column(length = 50)
	private String dog_local;
	private String dog_height;
	private String dog_weight;
	private String dog_information;
	private String dog_image;
	
}
