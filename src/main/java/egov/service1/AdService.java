package egov.service1;

import java.util.List;

public interface AdService {

	String  insertAd(AdVO vo) throws Exception;
	
	
	//강
	List<?> selectadService(AdVO vo) throws Exception;
	//강
	AdVO selectadDetailService(AdVO vo) throws Exception;
	
	//강 이것저것 업로드서비스
	int adApproveService(AdVO vo) throws Exception;

	//화면 상단 광고 P개수 출력(강)
	int selectcount(AdVO vo) throws Exception;

	//광고 총 데이터 개수 구하기(강)
	int selectAdTotal(AdVO vo) throws Exception;


	// 소라 메인 배너 불러오기 
	List<?> selectAdBanner(AdVO avo) throws Exception;


	

	
	
	
	
	
}
