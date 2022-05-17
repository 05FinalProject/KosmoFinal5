package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.FriendVO;

public interface FriendRepository extends CrudRepository<FriendVO, Integer> {

}
