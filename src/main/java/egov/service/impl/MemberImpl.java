package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.MemberService;
import egov.service1.MemberVO;

@Service("memberService")
public class MemberImpl implements MemberService{
	
	@Resource(name = "memberDAO")
	MemberDAO memberDAO;
	
	//회원가입 처리
	@Override //다형성 (오버라이딩,오버로딩)
	public String insertMember(MemberVO vo) throws Exception {
		return  memberDAO.insertMember(vo);
	}
	// 아이디 중복체크 파라미터 값 가져오기
	@Override
	public int popidck(String userid) throws Exception {
		return memberDAO.popidck(userid);
	}
	//아아디 중복체크
	@Override
	public int selectMemberIdCheck(String userid) throws Exception {
		return memberDAO.selectMemberIdCheck(userid);
	}
	
	//로그인 처리
	@Override
	public int selectMemberCount(MemberVO vo) throws Exception {
		return memberDAO.selectMemberCount(vo);
	}
	//로그인세션처리용
	@Override
	public MemberVO selectMemberCerify(MemberVO vo) throws Exception {
		return memberDAO.selectMemberCerify(vo);
	}
	//비밀번호 찾기
	@Override
	public int Pop_memberpassfind(MemberVO vo) throws Exception {
		return memberDAO.Pop_memberpassfind(vo);
	}
	//아이디 찾기
	@Override
	public String Pop_useridfd(MemberVO vo) throws Exception {
		return memberDAO.Pop_useridfd(vo);
	}
	//비밀번호 찾기 화면(비밀번호 변경)
	@Override
	public int Pop_newuserpw(MemberVO vo) throws Exception {
		return memberDAO.Pop_newuserpw(vo);
	}
	
	@Override
	public int selectBusinessMemberCount(MemberVO vo) throws Exception {
		return memberDAO.selectBusinessMemberCount(vo);
	}
	@Override
	public int selectAdminMemberLogin(MemberVO vo) throws Exception {
		return memberDAO.selectAdminMemberLogin(vo);
	}
	//회원탈퇴Save
	@Override
	public int deletememberuser(MemberVO vo) throws Exception {
		return memberDAO.deletememberuser(vo);
	}
	//회원정보 화면
	@Override
	public MemberVO selectmemberuser(MemberVO vo) throws Exception {
		return memberDAO.selectmemberuser(vo);
	}

	//회원정보 수정
	@Override
	public int updatemember(MemberVO vo) throws Exception {
		return memberDAO.updatemember(vo);
	}
	

	@Override
	public int mainPageDeliveryAddr(MemberVO vo) throws Exception {
		return memberDAO.mainPageDeliveryAddr(vo);
	}

	
	
	
	
	
	
	

	

	

	
}
