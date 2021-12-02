package egov.service1;

public interface MemberService {
	//회원가입 처리
	public String insertMember(MemberVO vo) throws Exception;
	//아이디 중복체크 파라미터 값 가져오기
	public int popidck(String userid) throws Exception;
	//아이디 중복체크 save버전
	public int selectMemberIdCheck(String userid) throws Exception;
	
	//로그인 처리
	public int selectMemberCount(MemberVO vo) throws Exception;

}
