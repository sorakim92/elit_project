package egov.service1;

import java.util.List;

public interface MemberService {
	
	//회원가입 처리
	public String insertMember(MemberVO vo) throws Exception;
	
	//아이디 중복체크 파라미터 값 가져오기
	public int popidck(String userid) throws Exception;
	
	//아이디 중복체크 save버전
	public int selectMemberIdCheck(String userid) throws Exception;
	
	//로그인 처리
	public int selectMemberCount(MemberVO vo) throws Exception;
	
	//로그인 인증
	public MemberVO selectMemberCerify(MemberVO vo) throws Exception;
	
	//비밀번호 찾기
	public int Pop_memberpassfind(MemberVO vo) throws Exception;
	
	//아이디 찾기
	public String Pop_useridfd(MemberVO vo)throws Exception;
	
	//비밀번호 찾기(변경화면)
	public int Pop_newuserpw(MemberVO vo)throws Exception;

	/*
	 * 사업자일 경우 (소라) 
	 * */
	public int selectBusinessMemberCount(MemberVO vo) throws Exception;

	/*
	 * 관리자 로그인 시도 (소라) 
	 */
	public int selectAdminMemberLogin(MemberVO vo) throws Exception;

	// 회원탈퇴Save (경석)
	public int deletememberuser(MemberVO vo) throws Exception;
	
	// 회원정보 화면 (경석)
	public MemberVO selectmemberuser(MemberVO vo) throws Exception;

	
	// 회원정보 수정 (경석)
	public int updatemember(MemberVO vo) throws Exception;


	/*
	 * 메인에서 주소 검색시 배달주소 설정 (소라) 
	 */
	public int mainPageDeliveryAddr(MemberVO vo) throws Exception;
	

	//사업자 회원탈퇴 (경석)
	public int deleteBossMember(MemberVO vo) throws Exception;


}
