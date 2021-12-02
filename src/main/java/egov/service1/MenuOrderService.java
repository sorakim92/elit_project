package egov.service1;

import java.util.List;

public interface MenuOrderService {
	
	/* 카테고리에서 매장 선택후 해당 매장 메뉴 리스트*/
	List<?> selectStoreMenuList(MenuOrderVO vo) throws Exception;

	MenuOrderVO selectStoreinfo(MenuOrderVO vo) throws Exception;

	
	
	
	

}
