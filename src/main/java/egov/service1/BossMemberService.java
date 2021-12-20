package egov.service1;

import java.util.List;

public interface BossMemberService {

	List<?> selectbossmemberService(BossMemberVO vo) throws Exception;

	BossMemberVO selectbossmemberDetail(BossMemberVO vo) throws Exception;
	int updatebossmember(BossMemberVO vo) throws Exception;

	//멤버 테이블 P -> Y (강성모)
	int updateMemberBusiness(MemberVO vo) throws Exception;

	//멤버테이블 정보 선택 (bossmember에 저장함) (강성모)
	BossMemberVO selectBossMemberInfo(MemberVO vo) throws Exception;

	//bossmember테이블에 사업자정보 insert(강성모)
	String insertBossMember(BossMemberVO bvo) throws Exception;
	
}
