package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.ZzimListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("zzimlistDAO")
public class ZzimListDAO extends EgovAbstractDAO{

	public String insertZzimList(ZzimListVO vo) {
		return (String) insert("zzimlistDAO.insertZzimList",vo);
	}

}
