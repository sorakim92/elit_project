package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("storereviewService")
public class StoreReviewImpl {
	@Resource(name = "StoreReviewDAO")
	StoreReviewDAO storereviewDAO;
}
