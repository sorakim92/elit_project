package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.BusinessEnterVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("businessenterDAO")
public class BusinessEnterDAO extends EgovAbstractDAO{

	public String insertbusinessEnterWrite(BusinessEnterVO vo) {
	return (String) insert("businessenterDAO.insertbusinessEnterWrite",vo);
	}

}
