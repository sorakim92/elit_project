package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MemberService;

@Service("memberService")
public class MemberImpl implements MemberService{
	@Resource(name = "memberDAO")
	MemberDAO memberDAO;
}
