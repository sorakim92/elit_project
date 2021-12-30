package egov.service1;

import java.util.List;

public interface AdService {

	String  insertAd(AdVO vo) throws Exception;
	//강
	List<?> selectadService(AdVO vo) throws Exception;
	//강
	List<?> selectadDetailService(AdVO vo) throws Exception;

	
	
	
	
	
}
