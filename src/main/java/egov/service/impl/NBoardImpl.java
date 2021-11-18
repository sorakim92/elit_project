package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.NBoardService;

@Service("nboardService")
public class NBoardImpl implements NBoardService{
	@Resource(name = "nboardDAO")
	NBoardDAO nboardDAO;
}
