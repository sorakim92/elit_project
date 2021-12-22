package egov.service1;

import java.util.List;

public interface AdminService {

	List<?> selectadminService(AdminVO vo) throws Exception;

	int adminPlus(AdminVO vo) throws Exception;

	//emp update section Y -> N
	int adminDelete(AdminVO vo) throws Exception;

	

}
