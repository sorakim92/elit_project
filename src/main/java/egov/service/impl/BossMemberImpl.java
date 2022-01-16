package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;
import egov.service1.MemberVO;

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

	@Override
	public int updateMemberBusiness(MemberVO vo) throws Exception {
		return bossmemberDAO.updateMemberBusiness(vo);
	}

	@Override
	public BossMemberVO selectBossMemberInfo(MemberVO vo) throws Exception {
		return bossmemberDAO.selectBossMemberInfo(vo);
	}

	@Override
	public String insertBossMember(BossMemberVO bvo) throws Exception {
		return bossmemberDAO.insertBossMember(bvo);
	}

	@Override
	public int returnMemberBusiness(MemberVO vo) throws Exception {
		return bossmemberDAO.returnMemberBusiness(vo);
	}

	@Override
	public BossMemberVO selectBossMemberInfo2(MemberVO vo) throws Exception {
		return bossmemberDAO.selectBossMemberInfo2(vo);
	}

	@Override
	public int deleteBossMember(BossMemberVO bvo) throws Exception {
		return bossmemberDAO.deleteBossMember(bvo);
	}

	@Override
	public int selectcountB(BossMemberVO vo) throws Exception {
		return bossmemberDAO.selectcountB(vo);
	}

	@Override
	public int selectBossTotal(BossMemberVO vo) throws Exception {
		return bossmemberDAO.selectBossTotal(vo);
	}

	

	
}
