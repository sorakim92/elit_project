package egov.service1;

import java.util.List;
import java.util.Map;

public interface CategoryService {

	List<?> selectKRfoodList(CategoryVO vo) throws Exception;

	List<?> selectZZIMlike(Map<String, String> map) throws Exception;

}
