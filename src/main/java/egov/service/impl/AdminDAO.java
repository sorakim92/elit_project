package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.AdminVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends EgovAbstractDAO{
	
	public List<?> selectadminService(AdminVO vo){
		
		return list("adminDAO.selectadminService",vo);
	}

	public int adminPlus(AdminVO vo) {

		return (int) update("adminDAO.adminPlus",vo);
	}

	//emp update section Y -> N
	public int adminDelete(AdminVO vo) {
		
		return (int) update("adminDAO.adminDelete",vo);
	}

	
}
