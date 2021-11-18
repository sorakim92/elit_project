package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.RejectionService;

@Service("rejectionService")
public class RejectionImpl implements RejectionService{
		@Resource(name = "rejectionDAO")
		RejectionDAO RejectionDAO;

}
