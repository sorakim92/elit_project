package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.TagService;

@Service("tagService")
public class TagImpl implements TagService{
	@Resource(name = "tagDAO")
	TagDAO tagDAO;
}
