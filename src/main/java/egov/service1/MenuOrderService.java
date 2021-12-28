package egov.service1;

import java.util.List;
import java.util.Map;

public interface MenuOrderService {
	
	/* 카테고리에서 매장 선택후 해당 매장 메뉴 리스트 (소라)*/
	List<?> selectStoreMenuList(MenuOrderVO vo) throws Exception;

	/* 메뉴오더리스트에서 좌측상단에 보이는 가게 정보
	 * (소라)
	 *  */
	MenuOrderVO selectStoreinfo(MenuOrderVO vo) throws Exception;

	/* 리뷰 갯수
	 * (소라)
	 * */
	int selectStoreReviewTotalCount(MenuOrderVO vo) throws Exception;

	/* 주문표에 메뉴 넣기 (대기)  
	 * -- x 시 delete처리, 
	 * 오더시 progressorder테이블로! 
	 * (소라) */
	String insertAddOrder(MenuOrderVO vo) throws Exception;

	/* insertaddorder 실행하기전 menu관련 내용 검색 
	 * (소라)
	 * */
	MenuOrderVO selectmenudetail(MenuOrderVO vo) throws Exception;

	/* 이미 주문표에 들어간 메뉴인지 확인하기 위함 
	 * (소라)
	 * */
	int countMenuunq(MenuOrderVO vo) throws Exception;

	/* 이미 주문표에 들어간 메뉴일 경우,
	 *  update로 qty +1 
	 * (소라)
	 * */
	int updateqty(MenuOrderVO vo) throws Exception;
	
	/*	주문하기 전 주문표로 갈 메뉴 정보 잠시 담아두는 역할
	 * (소라)
	 * */
	List<?> selectPreOrderList(Map map) throws Exception ;

	/* 결제 총금액
	 * (소라)
	 * */
	int selectTotPrice(MenuOrderVO vo) throws Exception;

	/*
	 * 주문을 위해 고객 기본정보 불러오기
	 * (소라)
	 * */
	MemberVO selectMemberInfo(String userid) throws Exception;

	/*	담아둔 주문 주문표에서 제거 
	 * (소라)
	 * */
	int deleteOrderMenu(MenuOrderVO vo) throws Exception ;

	
	
	
	

}
