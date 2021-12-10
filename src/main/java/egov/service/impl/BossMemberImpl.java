package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;

@Service("bossmemberService")
public class BossMemberImpl implements BossMemberService{
	@Resource(name = "bossmemberDAO")
	BossMemberDAO bossmemberDAO;

}
