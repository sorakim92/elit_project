package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.OrderReviewService;
import egov.service1.OrderReviewVO;


@Service("orderreviewService")
public class OrderReviewImpl implements OrderReviewService{
	@Resource(name = "orderreviewDAO")
	OrderReviewDAO orderreviewDAO;
	
	@Override
	public String insertBoard(OrderReviewVO vo) throws Exception {
		
		
		
		/* System.out.print("222222222222"); */
		return orderreviewDAO.insertBoard(vo);
	}	

	@Override
	public List<?> selectBoardList(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.selectBoardList(vo);
	}	

	@Override
	public OrderReviewVO selectBoardDetail(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.selectBoardDetail(vo);
	}

	@Override
	public int updateBoard(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.updateBoard(vo);
	}

	@Override 
	public int deleteBoard(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.deleteBoard(vo);
	}

	@Override
	public int updateBoardHits(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.updateBoardHits(vo);
	}

	@Override
	public int selectBoardTotal(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.selectBoardTotal(vo);
	}

		





	
}
