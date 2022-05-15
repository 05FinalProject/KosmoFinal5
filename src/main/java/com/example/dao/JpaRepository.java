package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.DogKindVO;

//JPA 연결 Repository
@Repository
public interface JpaRepository extends CrudRepository<DogKindVO, String> {

}
