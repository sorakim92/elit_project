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
	//로그인 세션 처리용
	public MemberVO selectMemberCerify(MemberVO vo) {
		return (MemberVO) select("memberDAO.selectMemberCerify",vo);
	}
	//비밀번호 찾기
	public int Pop_memberpassfind(MemberVO vo) {
		return (int) select("memberDAO.Pop_memberpassfind",vo);
	}
	//아이디 찾기
	public String Pop_useridfd(MemberVO vo) {
		return (String) select("memberDAO.Pop_useridfd",vo);
	}
	//비밀번호 찾기 (재설정)
	public int Pop_newuserpw(MemberVO vo) {
		return update("memberDAO.Pop_newuserpw",vo);
	}
	public int selectBusinessMemberCount(MemberVO vo) {
		return (int) select("memberDAO.selectBusinessMemberCount",vo);
	}
	public int selectAdminMemberLogin(MemberVO vo) {
		return (int) select("memberDAO.selectAdminMemberLogin",vo);
	}
	//회원탈퇴(save)
	public int deletememberuser(MemberVO vo) {
		return delete("memberDAO.deletememberuser",vo);
	}
	//회원정보 화면
	public MemberVO selectmemberuser(MemberVO vo) {
		return (MemberVO) select("memberDAO.selectmemberuser",vo);
	}
	//회원정보 수정
	public int updatemember(MemberVO vo) {
		return update("memberDAO.updatemember",vo);
	}
	
	
	
	

	

}
