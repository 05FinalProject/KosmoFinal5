package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, String>{

}
