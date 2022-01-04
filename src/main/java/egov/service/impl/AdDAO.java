package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.AdVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("adDAO")
public class AdDAO extends EgovAbstractDAO {

	public String insertAd(AdVO vo) {
		
		return (String) insert("adDAO.insertAd",vo);
	}
	//강
	public List<?> selectadService(AdVO vo) {
		
		return list("adDAO.selectadService",vo);
	}
	//강
	public AdVO selectadDetailService(AdVO vo) {
		return (AdVO) select("adDAO.selectadDetailService",vo);
	}
	//강
	public int adApproveService(AdVO vo) {
		return (int) update("adDAO.adApproveService",vo);
	}
	//강
	public int selectcount(AdVO vo) {
		return (int) select("adDAO.selectcount",vo);
	}
	//강
	public int selectAdTotal(AdVO vo) {
		return (int) select("adDAO.selectAdTotal",vo);
	}

	

}
