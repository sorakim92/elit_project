package egov.service1;

import java.util.List;

public interface StoreService {

	/*
	 * StoreRegister화면 List (강성모)
	 *	 */
	List<?> selectstoreService(BusinessEnterVO vo) throws Exception;

	/*
	 * StoreRegister화면 하단 세부내용 (강성모)
	 *	 */
	BusinessEnterVO selectStoreDetail(BusinessEnterVO vo) throws Exception;

	String insertStoreInfo(StoreVO vo) throws Exception;

	int selectsavecnt(StoreVO vo) throws Exception;

}
