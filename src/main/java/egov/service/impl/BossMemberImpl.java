package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;

@Service("bossmemberService")
public class BossMemberImpl implements BossMemberService{
	@Resource(name = "bossmemberDAO")
	BossMemberDAO bossmemberDAO;

	@Override
	public List<?> selectbossmemberService(BossMemberVO vo) throws Exception {

		
		return bossmemberDAO.selectbossmemberService(vo);
	}

	@Override
	public BossMemberVO selectbossmemberDetail(BossMemberVO vo) throws Exception {
		
		return bossmemberDAO.selectbossmemberDetail(vo);
	}

	@Override
	public int updatebossmember(BossMemberVO vo) throws Exception {
		
		return bossmemberDAO.updatebossmember(vo);
	}
}
