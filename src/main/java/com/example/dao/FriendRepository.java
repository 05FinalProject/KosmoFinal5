package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.FriendVO;
@Repository
public interface FriendRepository extends CrudRepository<FriendVO, Integer> {

}
