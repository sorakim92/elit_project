package egov.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdVO;
import egov.service1.AdminService;
import egov.service1.AdminVO;
import egov.service1.BossMemberVO;
import egov.service1.BusinessEnterVO;

@Service("adminService")
public class AdminImpl implements AdminService{
	
	@Resource(name = "adminDAO")
	AdminDAO adminDAO;
	
	
	@Override
	public List<?> selectadminService(AdminVO vo) throws Exception {
		
		return adminDAO.selectadminService(vo);
	}


	@Override
	public int adminPlus(AdminVO vo) throws Exception {

		return adminDAO.adminPlus(vo);
	}


	//emp update section Y -> N
	@Override
	public int adminDelete(AdminVO vo) throws Exception {
		
		return adminDAO.adminDelete(vo);
	}

	//메인페이지 광고List(강성모)
	@Override
	public List<?> selectAdList(AdVO vo) throws Exception {
		return adminDAO.selectAdList(vo);
	}


	@Override
	public List<?> selectEnterStoreList(BusinessEnterVO bvo) throws Exception {
		return adminDAO.selectEnterStoreList(bvo);
	}


	@Override
	public List<?> selectNewBossList(BossMemberVO cvo) throws Exception {
		return adminDAO.selectNewBossList(cvo);
	}


	

}
