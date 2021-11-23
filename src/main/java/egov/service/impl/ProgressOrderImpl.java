package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.ProgressOrderService;

@Service("progressorderService")
public class ProgressOrderImpl implements ProgressOrderService{

		@Resource(name = "progressorderDAO")
		ProgressOrderDAO progressorderDAO;
}
