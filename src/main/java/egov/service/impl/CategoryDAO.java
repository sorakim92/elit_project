package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.CategoryVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("categoryDAO")
public class CategoryDAO extends EgovAbstractDAO{

	public List<?> selectKRfoodList(CategoryVO vo) {
		return list("categoryDAO.selectKRfoodList",vo);
	}

}
