package egov.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MemberVO;
import egov.service1.MenuOrderService;
import egov.service1.MenuOrderVO;
import egov.service1.StoreReviewVO;

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

	@Override
	public int selectStoreReviewTotalCount(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectStoreReviewTotalCount(vo);
	}

	

	@Override
	public MenuOrderVO selectmenudetail(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectmenudetail(vo);
	}

	@Override
	public String insertAddOrder(MenuOrderVO vo) throws Exception {
		return menuorderDAO.insertAddOrder(vo);
	}

	@Override
	public int countMenuunq(MenuOrderVO vo) throws Exception {
		return menuorderDAO.countMenuunq(vo);
	}

	@Override
	public int updateqty(MenuOrderVO vo) throws Exception {
		return menuorderDAO.updateqty(vo);
	}

	@Override
	public List<?> selectPreOrderList(Map map) throws Exception {
		return menuorderDAO.selectPreOrderList(map);
	}

	@Override
	public int selectTotPrice(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectTotPrice(vo);
	}

	@Override
	public MemberVO selectMemberInfo(String userid) throws Exception {
		return menuorderDAO.selectMemberInfo(userid);
	}

	@Override
	public int deleteOrderMenu(MenuOrderVO vo) throws Exception {
		return menuorderDAO.deleteOrderMenu(vo);
	}

	@Override
	public List<?> selectStorereview(MenuOrderVO vo) throws Exception {
		return menuorderDAO.selectStorereview(vo);
	}
}
