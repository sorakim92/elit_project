package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.BusinessEnterVO;
import egov.service1.StoreVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("storeDAO")
public class StoreDAO extends EgovAbstractDAO{

	
	/*
	 * StoreRegister화면 List (강성모)
	 *	 */
	public List<?> selectstoreService(BusinessEnterVO vo) {
		return list("storeDAO.selectstoreService",vo);
	}

	public BusinessEnterVO selectStoreDetail(BusinessEnterVO vo) {
		return (BusinessEnterVO) select("storeDAO.selectStoreDetail",vo);
	}

	public String insertStoreInfo(StoreVO vo) {
		return (String) insert("storeDAO.insertStoreInfo",vo);
	}

	public int selectsavecnt(StoreVO vo) {
		return (int) select("storeDAO.selectsavecnt",vo);
	}

	public int updateStoreStatus(BusinessEnterVO bvo) {
		return (int) update("storeDAO.updateStoreStatus",bvo);
	}

	public int updateBusinessStatus(BusinessEnterVO vo) {
		return (int) update("storeDAO.updateBusinessStatus",vo);
	}

	public int selectcountRE(BusinessEnterVO bvo) {
		return (int) select("storeDAO.selectcountRE",bvo);
	}

	public int selectTotalRE(BusinessEnterVO bvo) {
		return (int) select("storeDAO.selectTotalRE",bvo);
	}
	
}
