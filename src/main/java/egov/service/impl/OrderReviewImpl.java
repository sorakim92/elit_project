package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.OrderReviewService;

@Service("orderreviewService")
public class OrderReviewImpl implements OrderReviewService{
	@Resource(name = "orderreviewDAO")
	OrderReviewDAO orderreviewDAO;
}
