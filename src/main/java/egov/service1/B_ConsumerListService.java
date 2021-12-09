package egov.service1;

import java.util.List;

public interface B_ConsumerListService {
	
	String insertb_ConsumerListWrite(B_ConsumerListVO vo) throws Exception;
	List<?> selectb_ConsumerList(B_ConsumerListVO vo) throws Exception;
	
}
