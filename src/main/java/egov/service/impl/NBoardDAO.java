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
	
}
