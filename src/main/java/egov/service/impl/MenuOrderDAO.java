package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.MenuOrderVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("menuorderDAO")
public class MenuOrderDAO extends EgovAbstractDAO{

	public List<?> selectStoreMenuList(MenuOrderVO vo) {
		return list("MenuOrderDAO.selectStoreMenuList",vo);
	}

	public MenuOrderVO selectStoreinfo(MenuOrderVO vo) {
		return  (MenuOrderVO) select("menuorderDAO.selectStoreinfo",vo);
	}

}
