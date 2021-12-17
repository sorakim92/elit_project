package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.StoreReviewVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("storereviewDAO")
public class StoreReviewDAO extends EgovAbstractDAO{

	public List<?> selectstoreReviewList(StoreReviewVO vo) {
		return list("storereviewDAO.selectstoreReviewList",vo);
	}

}
