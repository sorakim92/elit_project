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


}
