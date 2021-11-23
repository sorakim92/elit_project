package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.StoreReviewService;

@Service("storereviewService")
public class StoreReviewImpl implements StoreReviewService {
	@Resource(name = "storereviewDAO")
	StoreReviewDAO storereviewDAO;
}
