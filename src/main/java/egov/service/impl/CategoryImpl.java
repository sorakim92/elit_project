package egov.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.CategoryService;
import egov.service1.CategoryVO;

@Service("categoryService")
public class CategoryImpl implements CategoryService{
	@Resource(name = "categoryDAO")
	CategoryDAO categoryDAO;

	@Override
	public List<?> selectKRfoodList(CategoryVO vo) throws Exception {
		return categoryDAO.selectKRfoodList(vo);
	}

	@Override
	public List<?> selectZZIMlike(Map<String, String> map) throws Exception {
		return categoryDAO.selectZZIMlike(map);
	}

}
