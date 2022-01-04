package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BusinessEnterVO;
import egov.service1.StoreService;

@Service("storeService")
public class StoreImpl implements StoreService{
	@Resource(name = "storeDAO")
	StoreDAO storeDAO;

	
	/*
	 * StoreRegister화면 List (강성모)
	 *	 */
	@Override
	public List<?> selectstoreService(BusinessEnterVO vo) throws Exception {
		
		return storeDAO.selectstoreService(vo);
	}


	@Override
	public BusinessEnterVO selectStoreDetail(BusinessEnterVO vo) throws Exception {

		return storeDAO.selectStoreDetail(vo);
	}
}
