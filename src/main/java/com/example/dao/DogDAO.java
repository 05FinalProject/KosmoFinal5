package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.ChatingRoomVO;
import com.example.domain.DogKindVO;
import com.example.domain.Room;

//마이바티즈연결 DAO 인터페이스
@Mapper
public interface DogDAO {
	public DogKindVO getDog(DogKindVO vo);
	public DogKindVO getRoomNum(Room room);
	public void insertRoomMember(ChatingRoomVO vo);
	public void deleteRoomMember(ChatingRoomVO vo);
}
