package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.FriendChatingVO;
@Repository
public interface FriendChatingRepository extends CrudRepository<FriendChatingVO, Integer>{
	
	//친구랑 매세지 30개 뜨기
	@Query(value="  select * from (select * from friend_chating  "
			+ "  where friend_no = :friendNo  "
			+ "  order by chating_time desc) as f limit 30 ",nativeQuery = true)
	List<Object[]> messageHistory(int friendNo);
}
