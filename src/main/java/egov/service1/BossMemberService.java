package egov.service1;

import java.util.List;

public interface BossMemberService {

	List<?> selectbossmemberService(BossMemberVO vo) throws Exception;

	BossMemberVO selectbossmemberDetail(BossMemberVO vo) throws Exception;
	int updatebossmember(BossMemberVO vo) throws Exception;
	
}
