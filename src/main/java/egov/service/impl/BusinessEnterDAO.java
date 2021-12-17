package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.BusinessEnterVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("businessenterDAO")
public class BusinessEnterDAO extends EgovAbstractDAO{

	public String insertbusinessEnterWrite(BusinessEnterVO vo) {
	return (String) insert("businessenterDAO.insertbusinessEnterWrite",vo);
	}

	public List<?> selectbusinessEnterList(BusinessEnterVO vo) {
		
		return list("businessenterDAO.selectbusinessEnterList",vo);
	}

}
