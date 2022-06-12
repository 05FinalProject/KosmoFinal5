package com.example.service.chatingService;

import java.util.HashMap;
import java.util.List;

import com.example.domain.ChatingRoomVO;
import com.example.domain.FriendVO;
import com.example.domain.ImgVO;
import com.example.domain.LikeItVO;
import com.example.domain.UserVO;

public interface ChatingService {
	
	public void deleteByRoomMember(ChatingRoomVO vo);
	
	public void insertRoomMember(ChatingRoomVO vo);
	

	public List<ChatingRoomVO> findByRoomNumber(int roomNumber);
	
	public HashMap<String,Object> getChatingRoomUserInfo(UserVO vo);
	
	public List<ChatingRoomVO> findByRoomNumber(ChatingRoomVO vo);
	
	public List<ChatingRoomVO> getAllRooms(UserVO user);
	
	public List<ChatingRoomVO> getLastRoomNumber();
	
	public String checkRoomPass(ChatingRoomVO vo);
	
	public List<ImgVO> getUserImg(String email);
	
	public String checkLogin(UserVO vo);
	
	public UserVO getUserInfo(String roomMember);
	
	public long getRoomMemCnt(int roomNumber) ;
	
	public List<HashMap<String,Object>> getChatingRoomMemberInfo(ChatingRoomVO vo);
	
	public int getRoomCnt();
	
	public List<ChatingRoomVO> roomSearch(ChatingRoomVO vo);
	
	public List<HashMap<String,Object>> friendList(String email);

	void insertMessage(HashMap<String,Object> hm);
	
	List<HashMap<String, Object>> messageHistory(int friendNo);
	
	public void blackList(FriendVO vo);
	
	public List<FriendVO> friendSearch(String str,String str2);
	
	public void leaveTime(UserVO vo);
	
	public List<HashMap<String, Object>> UnreadMessage(UserVO vo);
	
	public void friendRequest(String email1 , String email2);
	
	public List<FriendVO> getFriendRequests(UserVO vo);
	
	public void complet(UserVO vo,String email);
	
	public List<HashMap<String, Object>> getMostLikeIt();
}
