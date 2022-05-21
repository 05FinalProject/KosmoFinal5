package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.domain.ChatingRoomVO;

@Repository
public interface ChatingRoomRepository extends CrudRepository<ChatingRoomVO, Integer> {
	
	 public List<ChatingRoomVO> findByRoomName(String word);
	 
	 @Modifying
	 @Transactional
	 @Query("DELETE FROM ChatingRoomVO c WHERE c.roomMember=:roomMember")
	 public void deleteByRoomMember(@Param("roomMember")String roomMember);
	 
	 @Query("SELECT count(c) as count FROM ChatingRoomVO c WHERE c.roomName=?1")
	 long getRoomMemCnt(String roomName);
	 
	 @Query(value = "select distinct room_name,room_num from chating_room order by room_num",nativeQuery = true)
	 public List<Object[]> getAllRooms();
	 
	 //select * from abandoned order by ab_no desc;
	 @Query("SELECT c FROM ChatingRoomVO c ORDER BY c.roomNumber DESC")
	 public List<ChatingRoomVO> getLastRoomNumber();
	 
}
