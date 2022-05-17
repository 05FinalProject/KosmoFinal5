package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.FriendChatingVO;
@Repository
public interface FriendChatingRepository extends CrudRepository<FriendChatingVO, Integer>{

}
