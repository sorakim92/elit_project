package egov.service1;

import java.util.List;

public interface MenuService {

	String  insertMenu(MenuVO vo) throws Exception;
	List<?> selectMenuList(MenuVO vo) throws Exception;
	
	MenuVO selectMenuDetail(MenuVO vo) throws Exception;
	
	
	
	
	
}
