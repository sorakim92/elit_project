package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BusinessEnterService;

@Service("businessEnterService")
public class BusinessEnterImpl implements BusinessEnterService{

	@Resource(name = "businessenterDAO")
	BusinessEnterDAO businessenterDAO;
	
}
