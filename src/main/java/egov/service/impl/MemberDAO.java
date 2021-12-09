package egov.service.impl;

import org.springframework.stereotype.Repository;

import egov.service1.MemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO{
	//회원가입 처리
	public String insertMember(MemberVO vo) {
		return (String) insert("memberDAO.insertMember",vo);
	}
	//아이디 중복체크
	public int popidck(String userid) {
		
		return (int) select("memberDAO.popidck",userid);
	}
	//아이디 중복체크 save버전
	public int selectMemberIdCheck(String userid) {
		return (int) select("memberDAO.selectMemberIdCheck",userid);
	}
	//로그인 처리
	public int selectMemberCount(MemberVO vo) {
		return (int) select("memberDAO.selectMemberCount",vo);
	}
	public int Pop_memberpassfind(String email) {
		return (int) select("memberDAO.Pop_memberpassfind",email);
	}
	
	

	

}
