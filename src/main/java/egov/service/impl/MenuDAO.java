package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.MenuVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("menuDAO")
public class MenuDAO extends EgovAbstractDAO{

	public String insertMenu(MenuVO vo) {
		return (String) insert("menuDAO.insertMenu",vo);
	}

	public List<?> selectMenuList(MenuVO vo) {	
		return list("menuDAO.selectMenuList",vo);
	}

	public MenuVO selectMenuDetail(MenuVO vo) {
		return (MenuVO) select("menuDAO.selectMenuDetail",vo);
	}

}
