package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdService;

@Service("adService")
public class AdImpl implements AdService{

		@Resource(name = "adDAO")
		AdDAO adDAO;
	
}
