package com.example.service.chatingService;

import java.util.ArrayList;
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
	public List<ChatingRoomVO> findByRoomName(ChatingRoomVO vo){
		return ch.findByRoomName(vo.getRoomName());
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
	
	public List<ChatingRoomVO> checkRoomPass(ChatingRoomVO vo){
		return ch.checkRoomPass(vo.getRoomNumber(),vo.getRoomPass());
	}
	
	public List<ImgVO> getUserImg(String email) {
		return img.findByUserEmail(email);
	}
	
}
