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

	public int LikeInsertChk(ZzimListVO vo) {
		return (int) select("zimlistDAO.LikeInsertChk",vo);
	}

	public String selectLikeChk(ZzimListVO vo) {
		return (String) select("zimlistDAO.selectLikeChk",vo);
	}

	public String insertZzimlike(ZzimListVO vo) {
		return (String) insert("zimlistDAO.insertZzimlike",vo);
	}

	public int addzzimlike(ZzimListVO vo) {
		return update("zimlistDAO.addzzimlike",vo);
	}

	public int cancelzzimlike(ZzimListVO vo) {
		return update("zimlistDAO.cancelzzimlike",vo);
	}


}
