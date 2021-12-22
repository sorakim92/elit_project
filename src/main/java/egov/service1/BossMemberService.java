package egov.service1;

import java.util.List;

public interface BossMemberService {

	//사업자등록 화면 (강성모)
	List<?> selectbossmemberService(BossMemberVO vo) throws Exception;

	BossMemberVO selectbossmemberDetail(BossMemberVO vo) throws Exception;
	int updatebossmember(BossMemberVO vo) throws Exception;

	//멤버 테이블  Business P -> Y (강성모)
	int updateMemberBusiness(MemberVO vo) throws Exception;

	//멤버테이블 정보 선택 (bossmember에 저장함) (강성모)
	BossMemberVO selectBossMemberInfo(MemberVO vo) throws Exception;

	//bossmember테이블에 사업자정보 insert(강성모)
	String insertBossMember(BossMemberVO bvo) throws Exception;

	//멤버테이블 Business Y -> P (강성모)
	int returnMemberBusiness(MemberVO vo) throws Exception;

	//멤버테이블 선택 (bossmember에서 삭제할 예정) (강성모)
	BossMemberVO selectBossMemberInfo2(MemberVO vo) throws Exception;

	int deleteBossMember(BossMemberVO bvo) throws Exception;
	
}
