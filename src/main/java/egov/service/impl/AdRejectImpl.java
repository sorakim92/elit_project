package egov.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdRejectService;

@Service("adrejectService")
public class AdRejectImpl implements AdRejectService{
	@Resource(name = "adrejectDAO")
	AdRejectDAO adrejectDAO;
}
