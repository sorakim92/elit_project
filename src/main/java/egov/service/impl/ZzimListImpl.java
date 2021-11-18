package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.ZzimListService;

@Service("zzimlistService")
public class ZzimListImpl implements ZzimListService{
	@Resource(name = "zzimlistDAO")
	ZzimListDAO zzimlistDAO;
}
