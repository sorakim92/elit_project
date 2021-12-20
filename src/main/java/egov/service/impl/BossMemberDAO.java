package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.BossMemberVO;
import egov.service1.MemberVO;
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

	public int updateMemberBusiness(MemberVO vo) {
		return (int) update("bossmemberDAO.updateMemberBusiness",vo);
	}

	public BossMemberVO selectBossMemberInfo(MemberVO vo) {
		return (BossMemberVO) select("bossmemberDAO.selectBossMemberInfo",vo);
	}

	public String insertBossMember(BossMemberVO bvo) {
		return (String) insert("bossmemberDAO.insertBossMember",bvo);
	}

	
}
