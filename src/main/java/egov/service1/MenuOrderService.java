package egov.service1;

import java.util.List;
import java.util.Map;

public interface MenuOrderService {
	
	/* 카테고리에서 매장 선택후 해당 매장 메뉴 리스트*/
	List<?> selectStoreMenuList(MenuOrderVO vo) throws Exception;

	/* 메뉴오더리스트에서 좌측상단에 보이는 가게 정보 */
	MenuOrderVO selectStoreinfo(MenuOrderVO vo) throws Exception;

	/* 리뷰 갯수*/
	int selectStoreReviewTotalCount(MenuOrderVO vo) throws Exception;

	/* 주문표에 메뉴 넣기 (대기)  
	 * -- x 시 delete처리, 
	 * 오더시 progressorder테이블로!  */
	String insertAddOrder(MenuOrderVO vo) throws Exception;

	/* insertaddorder 실행하기전 menu관련 내용 검색 */
	MenuOrderVO selectmenudetail(MenuOrderVO vo) throws Exception;

	/* 이미 주문표에 들어간 메뉴인지 확인하기 위함 */
	int countMenuunq(MenuOrderVO vo) throws Exception;

	/* 이미 주문표에 들어간 메뉴일 경우,
	 *  update로 qty +1 
	 * */
	int updateqty(MenuOrderVO vo) throws Exception;

	List<?> selectPreOrderList(Map map) throws Exception ;

	int selectTotPrice(MenuOrderVO vo) throws Exception;

	
	
	
	

}
