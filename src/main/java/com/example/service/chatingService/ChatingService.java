package com.example.service.chatingService;

import java.util.List;

import com.example.domain.ChatingRoomVO;
import com.example.domain.ImgVO;
import com.example.domain.UserVO;

public interface ChatingService {
	
	public void deleteByRoomMember(ChatingRoomVO vo);
	
	public void insertRoomMember(ChatingRoomVO vo);
	
	public List<ChatingRoomVO> findByRoomNumber(int roomNumber);
	
	public List<ChatingRoomVO> findByRoomNumber(ChatingRoomVO vo);
	
	public List<ChatingRoomVO> getAllRooms();
	
	public List<ChatingRoomVO> getLastRoomNumber();
	
	public List<ChatingRoomVO> checkRoomPass(ChatingRoomVO vo);
	
	public List<ImgVO> getUserImg(String email);
	
	public UserVO getUserInfo(String roomMember);
	
	public long getRoomMemCnt(int roomNumber) ;

}
