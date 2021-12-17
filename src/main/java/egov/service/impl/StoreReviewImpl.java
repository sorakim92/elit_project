package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.StoreReviewService;
import egov.service1.StoreReviewVO;

@Service("storereviewService")
public class StoreReviewImpl implements StoreReviewService {
	@Resource(name = "storereviewDAO")
	StoreReviewDAO storereviewDAO;

	@Override
	public List<?> selectstoreReviewList(StoreReviewVO vo) throws Exception {
		return storereviewDAO.selectstoreReviewList(vo);
	}
}
