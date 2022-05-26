package com.example.service.chatingService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ChatingRoomRepository;
import com.example.dao.ImgRepository;
import com.example.dao.UserRepository;
import com.example.domain.ChatingRoomVO;
import com.example.domain.ImgVO;
import com.example.domain.UserVO;

@Service
public class ChatingServiceImpl implements ChatingService {

	@Autowired
	private ChatingRoomRepository ch;
	
	@Autowired
	private UserRepository usr;
	
	@Autowired
	private ImgRepository img;
	
	//채팅방멤버삭제
	public void deleteByRoomMember(ChatingRoomVO vo) {
		ch.deleteByRoomMember(vo.getRoomMember());
	}
	
	//채팅방인원추가
	public void insertRoomMember(ChatingRoomVO vo) {
		ch.save(vo);
	}
	
	//채팅방인원수검색
	public List<ChatingRoomVO> findByRoomNumber(ChatingRoomVO vo){
		return ch.findByRoomNumber(vo.getRoomNumber());
	}
	
	//채팅방리스트
	public List<ChatingRoomVO> getAllRooms(){
		List<ChatingRoomVO> rList = new ArrayList();
		List<Object[]> list = ch.getAllRooms();
		
		for( Object[] o:list) {
			ChatingRoomVO vo = new ChatingRoomVO();
			vo.setRoomName((String)o[0]);
			vo.setRoomNumber((int)o[1]);
			rList.add(vo);
		}
		
		
		return rList;
	}
	
	public List<ChatingRoomVO> getLastRoomNumber(){
		return ch.getLastRoomNumber();
	}
	
	//채팅방번호가 비밀번호랑 일치하면 yes,아니면 no
	public String checkRoomPass(ChatingRoomVO vo){
		String boo = "no";
		if(ch.checkRoomPass(vo.getRoomNumber(),vo.getRoomPass()).size()>0) {
			boo = "yes";
		}
		return boo;
	}
	
	//user 이메일통해 이메지,닉네임 찾기
	public HashMap getChatingRoomUserInfo(UserVO vo) {
		HashMap hm = new HashMap();
		hm.put("niName",usr.findById(vo.getUserEmail()).get().getUserNickname() );
		hm.put("img",img.findByUserEmail(vo.getUserEmail()).get(0).getPRimgname() );
		hm.put("email",vo.getUserEmail());
		return hm;
	}
	
	//채팅방들어온 user 사진,닉네임, email은 HashMap에 담기
	public List<HashMap> getChatingRoomMemberInfo(ChatingRoomVO vo) {
		List<ChatingRoomVO> list = ch.findByRoomNumber(vo.getRoomNumber());
		ArrayList rlist = new ArrayList();
		HashMap hm = new HashMap();
		for(ChatingRoomVO v : list) {
			hm = new HashMap();
			hm.put("img", img.findByUserEmail(v.getRoomMember()).get(0).getPImgname()); //img
			hm.put("nickName",usr.findById(v.getRoomMember()).get().getUserNickname());//niname
			hm.put("email", v.getRoomMember());
			rlist.add(hm);
		}
		return rlist;
	}
	
	public List<ImgVO> getUserImg(String email) {
		return img.findByUserEmail(email);
	}
	
	//user의 id가 비밀번호랑 일치하면 yes,아니면 no
	public String checkLogin(UserVO vo) {
		
		String boo = "no";
		UserVO vv = usr.findById(vo.getUserEmail()).get();
		if(vo.getUserPass().equals(vv.getUserPass())) {
			boo = "yes";
		}
	
		return boo;
	}
	
	public UserVO getUserInfo(String roomMember) {
		return usr.findById(roomMember).get();
	}
	
	public List<ChatingRoomVO> findByRoomNumber(int roomNumber){
		return ch.findByRoomNumber(roomNumber );
	}
	
	public long getRoomMemCnt(int roomNumber) {
		return ch.getRoomMemCnt(roomNumber);
	}
	
}
