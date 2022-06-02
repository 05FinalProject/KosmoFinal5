package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;

@Repository
public interface AgencyRepository extends CrudRepository<AgencyVO, Integer>{
	
	@Query("SELECT a FROM AgencyVO a WHERE a.agencyCategoryNum = 1")
	public List<AgencyVO> findByAgencyCategoryNum();	
	
	//public List<AgencyVO> findByACategoryNum(int aCategoryNum);
	
	
	//시설 페이징 처리(호텔)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 1")
	int countHotelRecord();
	
	List<AgencyVO> findByAgencyCategoryNum(Pageable paging, int agencyCategoryNum);
	
	//시설 페이징 처리(카페)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 2")
	int countCafeRecord();
	
	//시설 페이징 처리(병원)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 3")
	int countHospitalRecord();
	
	//시설 페이징 처리(장례식장)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 5")
	int countFunehallRecord();
	
	@Query(value = "   select * from agency   "
			+ "  where (a_category_num = 2 and a_address like %:agencyName%)  "
			+ "  or (a_category_num = 2 and a_tel like %:agencyName%)  "
			+ "   or (a_category_num = 2 and a_name like %:agencyName%)  ",nativeQuery = true)
	
	
//	@Query("SELECT a FROM AgencyVO a WHERE c.agencyCategoryNum=2 and c.agencyName like %%")
	List<Object[]> agencyCafeSearch(String agencyName);
		
	
	@Query(value = "   select * from agency   "
			+ "  where (a_category_num = 1 and a_address like %:agencyName%)  "
			+ "  or (a_category_num = 1 and a_tel like %:agencyName%)  "
			+ "   or (a_category_num = 1 and a_name like %:agencyName%)  ",nativeQuery = true)
	List<Object[]> agencyHotelSearch(String agencyName);
	
	
	//차트 시설별 등록 개수(도넛차트)
	@Query(value="  SELECT  count(a_num), a_category_num    "
			+ "  FROM agency  "
			+ "  WHERE a_category_num IN(1,2,3,5)  "
			+ "  GROUP BY a_category_num",nativeQuery = true)
	public List<Object[]> chartAgencyCount();
	
	//월별 회원가입수(바 차트)
	@Query(value = "WITH RECURSIVE cte AS     "
			+ "(      "
			+ "   SELECT DATE_ADD(NOW(), INTERVAL -11 MONTH) AS d   "
			+ "        "
			+ "   UNION all      "
			+ "        "
			+ "   SELECT DATE_ADD(d, INTERVAL 1 MONTH)  AS d      "
			+ "   FROM cte      "
			+ "   WHERE d < now()     "
			+ ")     "
			+ "SELECT 		"
			+ "   DATE_FORMAT(c.d, '%y-%m') AS MONTH,		"
			+ "   IFNULL(m.users,0) users			"
			+ "FROM cte c		"
			+ "   LEFT OUTER JOIN (		"
			+ "      SELECT DATE_FORMAT(user_signup, '%y-%m') month, COUNT(*) users			"
			+ "      FROM user		"
			+ "      GROUP BY MONTH			"
			+ "      ) m		"
			+ "   ON date_format(c.d, '%y-%m') = m.month", nativeQuery = true)
	public List<Object[]> chartSignupUser();
		
	
}
