package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.ProgressOrderVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("progressorderDAO")
public class ProgressOrderDAO extends EgovAbstractDAO{

	public String insertProgressOrder(ProgressOrderVO vo) {
		return (String) insert("progressorderDAO.insertProgressOrder",vo);
	}

	public int resetpreorder(ProgressOrderVO vo) {
		return (int) delete("progressorderDAO.resetpreorder",vo);
	}

}
