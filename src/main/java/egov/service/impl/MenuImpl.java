package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MenuService;

@Service("menuService")
public class MenuImpl implements	 MenuService{
	@Resource(name = "manuDAO")
	MenuDAO menuDAO;
}
