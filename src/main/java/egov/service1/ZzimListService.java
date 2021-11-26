package egov.service1;

import java.util.List;

public interface ZzimListService {
	
	String insertZzimList(ZzimListVO vo) throws Exception;
	List<?> selectZzimList(ZzimListVO vo) throws Exception;
	int selectZzimListTotal(ZzimListVO vo) throws Exception;




}
