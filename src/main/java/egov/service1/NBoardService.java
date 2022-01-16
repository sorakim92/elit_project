package egov.service1;

import java.util.List;

public interface NBoardService {

	/*
	 * 공지사항 리스트 (소라)
	 * */
	List<?> selectNboardList(NBoardVO vo) throws Exception;


	/*
	 * 공지사항 글쓰기 저장 (소라)
	 * */
	String insertnboardWrite(NBoardVO vo) throws Exception;

	/*
	 * 공지사항 내용보기 (소라)
	 * */
	NBoardVO selectnboardDetail(NBoardVO vo) throws Exception;

	/*
	 * 공지사항 업데이트 (소라)
	 * */
	int updatenboard(NBoardVO vo) throws Exception;

	/*
	 * 글 지우기 (소라)
	 * */
	int deletenboard(NBoardVO vo) throws Exception;

	/*
	 * 글 조회수 (소라)
	 * */
	int updatenboardHits(NBoardVO vo) throws Exception;

	/*
	 * faq 리스트 (소라)
	 * */
	List<?> selectFAQList(NBoardVO vo) throws Exception;

	
	/*
	 * 공지사항 게시글 총 개수 (소라)
	 * */
	int selectTotalnotice(NBoardVO vo) throws Exception;

	/*
	 * 자주묻는질문 게시글 총 개수(소라)
	 * */
	int selectTotalfaq(NBoardVO vo);

}
