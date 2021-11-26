package egov.service1;

import java.util.List;

public interface NBoardService {

	/*
	 * 공지사항 리스트 
	 * */
	List<?> selectNboardList(NBoardVO vo) throws Exception;

	/*
	 * 공지사항 글쓰기 저장 
	 * */
	String insertnboardWrite(NBoardVO vo) throws Exception;

	/*
	 * 공지사항 내용보기
	 * */
	NBoardVO selectnboardDetail(NBoardVO vo) throws Exception;

	/*
	 * 공지사항 업데이트
	 * */
	int updatenboard(NBoardVO vo) throws Exception;

	int deletenboard(NBoardVO vo) throws Exception;

	int updatenboardHits(NBoardVO vo) throws Exception;

}
