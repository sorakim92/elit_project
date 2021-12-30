package egov.service1;

import java.util.List;

public interface AdminService {

	/*
	 *  관리자 추가페이지(강성모)
	 * 	 */
	List<?> selectadminService(AdminVO vo) throws Exception;

	//emp update section Y <- N (강성모)
	int adminPlus(AdminVO vo) throws Exception;

	//emp update section Y -> N (강성모)
	int adminDelete(AdminVO vo) throws Exception;

	

}
