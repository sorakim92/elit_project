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

}
