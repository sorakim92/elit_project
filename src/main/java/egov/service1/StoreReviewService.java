package egov.service1;

import java.util.List;

public interface StoreReviewService {

	List<?> selectstoreReviewList(StoreReviewVO vo) throws Exception;
	String insertstoreReviewWrite(StoreReviewVO vo) throws Exception;
}
