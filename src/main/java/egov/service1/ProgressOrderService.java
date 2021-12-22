package egov.service1;

import java.util.List;

public interface ProgressOrderService {


	List<?> selectProgressOrderList(ProgressOrderVO vo) throws Exception;

	String insertProgressOrder(ProgressOrderVO vo) throws Exception;

	int resetpreorder(ProgressOrderVO vo) throws Exception;

	List<?> selectorderendList(ProgressOrderVO vo) throws Exception;


}
