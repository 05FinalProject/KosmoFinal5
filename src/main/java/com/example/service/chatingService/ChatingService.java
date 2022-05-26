package com.example.service.chatingService;

import java.util.HashMap;
import java.util.List;

import com.example.domain.ChatingRoomVO;
import com.example.domain.ImgVO;
import com.example.domain.UserVO;

public interface ChatingService {
	
	public void deleteByRoomMember(ChatingRoomVO vo);
	
	public void insertRoomMember(ChatingRoomVO vo);
	

	public List<ChatingRoomVO> findByRoomNumber(int roomNumber);
	
	public HashMap getChatingRoomUserInfo(UserVO vo);
	
	public List<ChatingRoomVO> findByRoomNumber(ChatingRoomVO vo);
	
	public List<ChatingRoomVO> getAllRooms(UserVO user);
	
	public List<ChatingRoomVO> getLastRoomNumber();
	
	public String checkRoomPass(ChatingRoomVO vo);
	
	public List<ImgVO> getUserImg(String email);
	
	public String checkLogin(UserVO vo);
	
	public UserVO getUserInfo(String roomMember);
	
	public long getRoomMemCnt(int roomNumber) ;
	
	public List<HashMap> getChatingRoomMemberInfo(ChatingRoomVO vo);
	
	public int getRoomCnt();

}
