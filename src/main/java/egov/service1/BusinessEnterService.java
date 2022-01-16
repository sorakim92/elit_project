package egov.service1;

import java.util.List;

public interface BusinessEnterService {

	String  insertbusinessEnterWrite(BusinessEnterVO vo) throws Exception;
	
	List<?> selectbusinessEnterList(BusinessEnterVO vo) throws Exception;
}
