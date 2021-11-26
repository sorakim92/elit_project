package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.ZzimListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("zzimlistDAO")
public class ZzimListDAO extends EgovAbstractDAO{

	public String insertZzimList(ZzimListVO vo) {
		return (String) insert("zzimlistDAO.insertZzimList",vo);
	}

	public List<?> selectZzimList(ZzimListVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectZzimListTotal(ZzimListVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


}
