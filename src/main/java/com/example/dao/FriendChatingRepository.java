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
	
	@Query(value="  select  c.chating_no,c.chating_message,c.chating_sign,c.chating_time,c.friend_no,f.user_sign,f.user_email,f.user_email1 from friend_chating c inner join friend f  "
			+ "  on c.friend_no=f.friend_no  "
			+ "  where (c.chating_time>(select chat_leave from user where user_email='abcd1@naver.com' )  "
			+ "  and chating_sign=1 and f.user_email1='abcd1@naver.com' and f.user_sign=0)  "
			+ "  or  (c.chating_time>(select chat_leave from user where user_email='abcd1@naver.com')  "
			+ "  and chating_sign=2 and f.user_email='abcd1@naver.com' and f.user_sign=0)  ",nativeQuery = true)
	List<Object[]> UnreadMessage(String email);
}
