package com.example.domain;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity(name = "dog_kind")
public class DogKindVO {
	@Id
	private String dog_kind;
	private String dog_local;
	private String dog_height;
	private String dog_weight;
	private String dog_information;
	private String dog_image;
	@Transient
	private String count;
}
