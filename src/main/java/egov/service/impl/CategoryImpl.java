package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.CategoryService;

@Service("categoryService")
public class CategoryImpl implements CategoryService{
	@Resource(name = "CategoryDAO")
	CategoryDAO categoryDAO;

}
