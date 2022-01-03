package egov.service1;

import java.util.List;

public interface ProgressOrderService {


	List<?> selectProgressOrderList(ProgressOrderVO vo) throws Exception;
	int updateProgressOrder(ProgressOrderVO vo) throws Exception;
	/*
	 * 주문한내역 넘기기 (소라)
	 * */
	String insertProgressOrder(ProgressOrderVO vo) throws Exception;
	/*
	 * 주문한내역 넘기면서 preorder 테이블 내용 지우기  (소라)
	 * */
	int resetpreorder(ProgressOrderVO vo) throws Exception;

	List<?> selectorderendList(ProgressOrderVO vo) throws Exception;

	/*
	 * 유저아이디로 현재 진행중인 오더리스트 불러오기 (for main pg) (소라)
	 * */
	List<?> selectMainProOrder(String userid) throws Exception;
	/*
	 * 세션에서 받은 유저아이디 기준(vo에 태움) 오더리스트들 불러오기 (마이페이지)
	 * (소라)
	 * */
	List<?> selectMyOrderlist(ProgressOrderVO vo);


}
