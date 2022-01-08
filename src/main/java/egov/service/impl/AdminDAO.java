package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.AdVO;
import egov.service1.AdminVO;
import egov.service1.BossMemberVO;
import egov.service1.BusinessEnterVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends EgovAbstractDAO{
	
	/*
	 *  관리자 추가페이지(강성모)
	 * 	 */
	public List<?> selectadminService(AdminVO vo){
		
		return list("adminDAO.selectadminService",vo);
	}
	//emp update section Y <- N (강성모)
	public int adminPlus(AdminVO vo) {

		return (int) update("adminDAO.adminPlus",vo);
	}

	//emp update section Y -> N(kangsungmo)
	public int adminDelete(AdminVO vo) {
		
		return (int) update("adminDAO.adminDelete",vo);
	}
	
	//메인페이지 광고List(강성모)
	public List<?> selectAdList(AdVO vo) {
		return list("adminDAO.selectAdList",vo);
	}
	public List<?> selectEnterStoreList(BusinessEnterVO bvo) {
		return list("adminDAO.selectEnterStoreList",bvo);
	}
	public List<?> selectNewBossList(BossMemberVO cvo) {
		return list("adminDAO.selectNewBossList",cvo);
	}
	public int selectcountAdmin(AdminVO vo) {
		return (int) select("adminDAO.selectcountAdmin",vo);
	}
	public int selectAdminTotal(AdminVO vo) {
		return (int) select("adminDAO.selectAdminTotal",vo);
	}

	
}
