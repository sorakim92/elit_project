package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MenuService;
import egov.service1.MenuVO;

@Service("menuService")
public class MenuImpl implements MenuService{
	@Resource(name = "menuDAO")
	MenuDAO menuDAO;

	@Override
	public String insertMenu(MenuVO vo) throws Exception {
		return menuDAO.insertMenu(vo);
	}

	@Override
	public List<?> selectMenuList(MenuVO vo) throws Exception {
		return menuDAO.selectMenuList(vo);
	}

	@Override
	public MenuVO selectMenuDetail(MenuVO vo) throws Exception {
		
		return menuDAO.selectMenuDetail(vo);
	}

	@Override
	public int updateMenu(MenuVO vo) throws Exception {
		return menuDAO.updateMenu(vo);
	}

	@Override
	public int deleteMenu(MenuVO vo) throws Exception {
		return menuDAO.deleteMenu(vo);
	}
}
