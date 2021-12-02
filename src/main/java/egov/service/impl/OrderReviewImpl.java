package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.OrderReviewService;
import egov.service1.OrderReviewVO;

@Service("orderreviewService")
public class OrderReviewImpl implements OrderReviewService{
	@Resource(name = "orderreviewDAO")
	OrderReviewDAO orderreviewDAO;

	@Override
	public String insertOrderReviewboard(OrderReviewVO vo) throws Exception {
		return orderreviewDAO.insertOrderReviewboard(vo);
	}
}
