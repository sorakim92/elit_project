package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.NBoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("nboardDAO")
public class NBoardDAO extends EgovAbstractDAO{

	public List<?> selectNboardList(NBoardVO vo) {
		return list("nboardDAO.selectNboardList",vo);
	}

	public String insertnboardWrite(NBoardVO vo) {
		return (String) insert("nboardDAO.insertnboardWrite",vo);
	}

	public NBoardVO selectnboardDetail(NBoardVO vo) {
		return (NBoardVO) select("nboardDAO.selectnboardDetail",vo);
	}

	public int updatenboard(NBoardVO vo) {
		return (int) update("nboardDAO.updatenboard",vo);
	}

	public int deletenboard(NBoardVO vo) {
		return (int) delete("nboardDAO.deletenboard",vo);
	}

	public int updatenboardHits(NBoardVO vo) {
		return (int) update("nboardDAO.updatenboardHits",vo);
	}

	
	public List<?> selectFAQList(NBoardVO vo) {
		return list("nboardDAO.selectFAQList",vo);
	}
	
}
