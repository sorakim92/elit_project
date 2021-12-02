package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MenuOrderService;
import egov.service1.MenuOrderVO;

@Service("menuorderService")
public class MenuOrderImpl implements MenuOrderService {

	@Resource(name="menuorderDAO")
	MenuOrderDAO menuorderDAO;

	@Override
	public List<?> selectStoreMenuList(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectStoreMenuList(vo);
	}

	@Override
	public MenuOrderVO selectStoreinfo(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectStoreinfo(vo);
	}
}
