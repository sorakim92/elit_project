package egov.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egov.service1.MemberVO;
import egov.service1.MenuOrderVO;
import egov.service1.StoreReviewVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("menuorderDAO")
public class MenuOrderDAO extends EgovAbstractDAO{

	public List<?> selectStoreMenuList(MenuOrderVO vo) {
		return list("menuorderDAO.selectStoreMenuList",vo);
	}

	public MenuOrderVO selectStoreinfo(MenuOrderVO vo) {
		return  (MenuOrderVO) select("menuorderDAO.selectStoreinfo",vo);
	}

	public int selectStoreReviewTotalCount(MenuOrderVO vo) {
		return (int) select("menuorderDAO.selectStoreReviewTotalCount",vo);
	}



	public MenuOrderVO selectmenudetail(MenuOrderVO vo) {
		return (MenuOrderVO) select("menuorderDAO.selectmenudetail",vo);
	}

	public String insertAddOrder(MenuOrderVO vo) {
		return (String) insert("menuorderDAO.insertAddOrder",vo);
	}

	public int countMenuunq(MenuOrderVO vo) {
		return (int) select("menuorderDAO.countMenuunq",vo);
	}

	public int updateqty(MenuOrderVO vo) {
		return (int) update("menuorderDAO.updateqty",vo);
	}

	public List<?> selectPreOrderList(Map map) {
		return list("menuorderDAO.selectPreOrderList",map);
	}

	public int selectTotPrice(MenuOrderVO vo) {
		return (int) select("menuorderDAO.selectTotPrice",vo);
	}

	public MemberVO selectMemberInfo(String userid) {
		return (MemberVO) select("menuorderDAO.selectMemberInfo",userid);
	}

	public int deleteOrderMenu(MenuOrderVO vo) {
		return (int) delete("menuorderDAO.deleteOrderMenu",vo);
	}

	public List<?> selectStorereview(MenuOrderVO vo) {
		return list("menuorderDAO.selectStorereview",vo);
	}

}
