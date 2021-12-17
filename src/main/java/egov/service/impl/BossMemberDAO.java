package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.BossMemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("bossmemberDAO")
public class BossMemberDAO extends EgovAbstractDAO {

	public List<?> selectbossmemberService(BossMemberVO vo) {	
			return list("bossmemberDAO.selectbossmemberService",vo);
	}
	
	public BossMemberVO selectbossmemberDetail(BossMemberVO vo) {	
		return (BossMemberVO) select("bossmemberDAO.selectbossmemberDetail",vo);
	}
	
	public int updatebossmember(BossMemberVO vo) {
		return (int) update("bossmemberDAO.updatebossmember",vo);
	}

}
