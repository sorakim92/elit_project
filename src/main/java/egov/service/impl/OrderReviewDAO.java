package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.OrderReviewVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("orderreviewDAO")
public class OrderReviewDAO extends EgovAbstractDAO{
	
	public String insertBoard(OrderReviewVO vo) {
		return (String) insert("orderreviewDAO.insertBoard",vo);
	}	

	public List<?> selectBoardList(OrderReviewVO vo) {
		return list("orderreviewDAO.selectBoardList",vo);
	}

	public OrderReviewVO selectBoardDetail(OrderReviewVO vo) {
		return (OrderReviewVO) select("orderreviewDAO.selectBoardDetail",vo);
	}

	public int updateBoard(OrderReviewVO vo) {
		return update("orderreviewDAO.updateBoard",vo);
	}

	public int deleteBoard(OrderReviewVO vo) {
		return delete("orderreviewDAO.deleteBoard",vo);
	}

	public int updateBoardHits(OrderReviewVO vo) {
		return update("orderreviewDAO.updateBoardHits",vo);
	}
	
	public int selectBoardTotal(OrderReviewVO vo) {
		return (int) select("orderreviewDAO.selectBoardTotal",vo);
	}

}
