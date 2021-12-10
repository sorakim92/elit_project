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
}
