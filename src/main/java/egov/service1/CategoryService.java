package egov.service1;

import java.util.List;
import java.util.Map;

public interface CategoryService {

	/* 각 카테고리 음식점 조회
	 * 카테고리 번호는 컨트롤러에서 넘어옴. 서비스 하나로 가능 
	 *   (소라)*/
	List<?> selectKRfoodList(CategoryVO vo) throws Exception;

	/* 찜하기(소라)*/
	List<?> selectZZIMlike(Map<String, String> map) throws Exception;

	/*
	 * 오늘 뭐먹지 부분 (소라)
	 * */
	List<?> selecttodayTopList(CategoryVO vo) throws Exception;

	/*
	 * 오늘뭐먹지 리스트 찜부분 (소라)
	 * */
	List<?> selectZZIMlikeTodaylist(String userid) throws Exception;

	
}
