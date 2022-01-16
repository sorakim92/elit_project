package egov.service1;

import java.util.List;

public interface InquiryService {
	
	String insertBoard(InquiryVO vo) throws Exception;
	List<?> selectBoardList(InquiryVO vo) throws Exception;	
	InquiryVO selectBoardDetail(InquiryVO vo) throws Exception;
	int updateBoard(InquiryVO vo) throws Exception;
	int deleteBoard(InquiryVO vo) throws Exception;
	int updateBoardHits(InquiryVO vo) throws Exception;
	
	int selectBoardTotal(InquiryVO vo) throws Exception;
	
	

}
