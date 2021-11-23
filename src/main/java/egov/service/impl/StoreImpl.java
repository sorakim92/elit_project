package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.StoreService;

@Service("storeService")
public class StoreImpl implements StoreService{
	@Resource(name = "storeDAO")
	StoreDAO storeDAO;
}
