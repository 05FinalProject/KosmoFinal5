package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.community.CommunityVO;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;
@Repository
public interface ImgRepository extends CrudRepository<ImgVO, Integer> {
	
	@Query("SELECT i FROM ImgVO i WHERE i.user.userEmail=:email")
	public List<ImgVO> findByUserEmail(String email);
	
	@Query(value = "SELECT p_rimgname FROM img WHERE c_num = :number", nativeQuery = true)
	public List<ImgVO> findCommunityImgnum(Integer number);

	public List<ImgVO> findByPet(PetVO pet);
	
	public List<ImgVO> findByCommunity(CommunityVO community);
	


	

	public List<ImgVO> findByUser(UserVO u);

	@Query(value="SELECT i.p_rimgname, c.c_title, c.c_insertdate, u.user_nickname, c.c_num  \r\n"
			+ "FROM community c INNER JOIN img i \r\n"
			+ "ON c.c_num = i.c_num \r\n"
			+ "INNER JOIN user u \r\n"
			+ "ON c.user_email = u.user_email \r\n"
			+ "WHERE c.c_num = :communityVo\r\n"
			+ "group by i.p_imgnum\r\n"
			+ "order by i.p_imgnum limit 1;", nativeQuery = true)
	public List<Object[]> findByCommunityAndUserOrderByAsc(Integer communityVo);


	@Query(value="SELECT i.p_rimgname, p.pet_name, p.pet_age, p.pet_gender, p.pet_variety, p.pet_neutering, u.user_nickname, p.pet_num  \r\n"
			+ "FROM pet p INNER JOIN img i \r\n"
			+ "ON p.pet_num = i.p_num \r\n"
			+ "INNER JOIN user u \r\n"
			+ "ON p.user_email = u.user_email \r\n"
			+ "WHERE p.pet_num = :pvo\r\n"
			+ "group by i.p_imgnum\r\n"
			+ "order by i.p_imgnum limit 1;", nativeQuery = true)
	public List<Object[]> findByPetOrderByDESC(Integer pvo);

}	

