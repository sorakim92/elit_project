package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.BossMemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("bossmemberDAO")
public class BossMemberDAO extends EgovAbstractDAO {

	public String insertbossmemberWrite(BossMemberVO vo) {
		return (String) insert("bossmemberDAO.insertbossmemberWrite",vo);
	}

}
