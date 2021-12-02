package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BusinessEnterService;
import egov.service1.BusinessEnterVO;

@Service("businessEnterService")
public class BusinessEnterImpl implements BusinessEnterService{

	@Resource(name = "businessenterDAO")
	BusinessEnterDAO businessenterDAO;

	@Override
	public String insertbusinessEnterWrite(BusinessEnterVO vo) throws Exception {
		return businessenterDAO.insertbusinessEnterWrite(vo);
	}
	
	
	
}
