package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.ProgressOrderVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("progressorderDAO")
public class ProgressOrderDAO extends EgovAbstractDAO{


	public List<?> selectProgressOrderList(ProgressOrderVO vo) {
		
		return list("progressorderDAO.selectProgressOrderList",vo);
	}
	public String insertProgressOrder(ProgressOrderVO vo) {
		return (String) insert("progressorderDAO.insertProgressOrder",vo);
	}

	public int resetpreorder(ProgressOrderVO vo) {
		return (int) delete("progressorderDAO.resetpreorder",vo);

	}
	public List<?> selectorderendList(ProgressOrderVO vo) {
		return list("progressorderDAO.selectorderendList",vo);
	}
	public int updateProgressOrder(ProgressOrderVO vo) {
		return (int) update("progressorderDAO.updateProgressOrder",vo);
	}

}
