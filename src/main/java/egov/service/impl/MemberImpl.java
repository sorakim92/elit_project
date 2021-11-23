package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MemberService;
import egov.service1.MemberVO;

@Service("memberService")
public class MemberImpl implements MemberService{
	@Resource(name = "memberDAO")
	MemberDAO memberDAO;

	@Override
	public String insertMember(MemberVO vo) throws Exception {
		return  memberDAO.insertMember(vo);
	}

	

	
}
