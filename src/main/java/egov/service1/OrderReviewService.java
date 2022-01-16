package egov.service1;

import java.util.List;

public interface OrderReviewService {
	
	String insertBoard(OrderReviewVO vo) throws Exception;
	List<?> selectBoardList(OrderReviewVO vo) throws Exception;		
	OrderReviewVO selectBoardDetail(OrderReviewVO vo) throws Exception;
	int updateBoard(OrderReviewVO vo) throws Exception;
	int deleteBoard(OrderReviewVO vo) throws Exception;
	int updateBoardHits(OrderReviewVO vo) throws Exception;
	
	int selectBoardTotal(OrderReviewVO vo) throws Exception;
	
	
}
