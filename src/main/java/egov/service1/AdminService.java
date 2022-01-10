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

	//메인페이지 광고List(강성모)
	List<?> selectAdList(AdVO vo) throws Exception;
	//이하동문
	List<?> selectEnterStoreList(BusinessEnterVO bvo) throws Exception;
	//이하동문
	List<?> selectNewBossList(BossMemberVO cvo) throws Exception;
//페이징처리(강성모)
	int selectcountAdmin(AdminVO vo) throws Exception;
	//페이징처리(강성모)
	int selectAdminTotal(AdminVO vo) throws Exception;

	

}
