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

}
