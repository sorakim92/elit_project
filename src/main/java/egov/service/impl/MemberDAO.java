package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.MemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO{

	public String insertMember(MemberVO vo) {
		return (String) insert("memberDAO.insertMember",vo);
	}



}
