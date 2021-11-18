package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.B_ConsumerListService;

@Service("b_consumerlistService")
public class B_ConsumerListImpl  implements B_ConsumerListService{
	@Resource(name = "b_consumerlistDAO")
	B_ConsumerListDAO b_consumerlistDAO;
}
