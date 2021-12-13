package egov.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdminService;
import egov.service1.AdminVO;

@Service("adminService")
public class AdminImpl implements AdminService{
	
	@Resource(name = "adminDAO")
	AdminDAO adminDAO;
	
	
	@Override
	public List<?> selectadminService(AdminVO vo) throws Exception {
		
		return adminDAO.selectadminService(vo);
	}

}
