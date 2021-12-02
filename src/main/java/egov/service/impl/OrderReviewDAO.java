package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.OrderReviewVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("orderreviewDAO")
public class OrderReviewDAO extends EgovAbstractDAO{

	public String insertOrderReviewboard(OrderReviewVO vo) {
		return (String) insert("orderreviewDAO.insertOrderReviewboard",vo);
	}

}
