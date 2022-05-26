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
	
	 
	 public List<ChatingRoomVO> findByRoomNumber(int roomNumber);
	 
	 @Modifying
	 @Transactional
	 @Query("DELETE FROM ChatingRoomVO c WHERE c.roomMember=:roomMember")
	 public void deleteByRoomMember(@Param("roomMember")String roomMember);
	 
	 @Query("SELECT count(c) as count FROM ChatingRoomVO c WHERE c.roomNumber=?1")
	 long getRoomMemCnt(int roomNumber);
	 
	 @Query(value = "select * from chating_room   "
	 		+ "  where room_num in (select c.room_num from (select room_num from chating_room group by room_num limit :page,6) as c)",nativeQuery = true)
	 public List<Object[]> getAllRooms(int page);
	 
	 @Query("SELECT c FROM ChatingRoomVO c ORDER BY c.roomNumber DESC")
	 public List<ChatingRoomVO> getLastRoomNumber();
	 
	 @Query("SELECT c FROM ChatingRoomVO c WHERE c.roomNumber=:roomNumber and c.roomPass=:roomPass")
	 public List<ChatingRoomVO> checkRoomPass(int roomNumber,String roomPass );
	 
	 //select distinct count(*) from chating_room
	 @Query(value = "select distinct count(*) from chating_room" ,nativeQuery = true)
	 public List<Object[]> getRoomCnt();
	 
	 
	 
}
