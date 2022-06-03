package com.example.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.PetVO;
@Repository
public interface PetRepository extends CrudRepository<PetVO, Integer>{

	@Query("SELECT p FROM PetVO p WHERE p.user.userEmail=:email")
	public PetVO findByUserEmail(String email);


}
