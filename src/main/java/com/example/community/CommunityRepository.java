package com.example.community;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;



@Repository
public interface CommunityRepository extends CrudRepository<CommunityVO, Integer> {
	
	//게시글 작성
	/*
	 * @Query(
	 * value="INSERT INTO img( p_imgname, p_rimgname) VALUES(p_imgname=:p_imgname,p_rimgname=:p_rimgname) ON"
	 * ,nativeQuery = true) List<ImgFileVO> findByC_num(Integer c_num);
	 */
	

	//일상공유 페이지 페이징 처리
	@Query("SELECT count(c) as count FROM CommunityVO c")
	int countCommunityRecord();
		
	List<CommunityVO> findAllByCommunityState(Pageable paging, Integer communityState);
	
	
	//****************admin*****************
	List<CommunityVO> findAll();
	
	
	@Query("SELECT c FROM CommunityVO c WHERE c.user.userEmail=:userEmail Order By c.communityInsertdate DESC")
	List<CommunityVO> getCommunityByUser(String userEmail);

	
	List<CommunityVO> findByUser(UserVO u);
}
