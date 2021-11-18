package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.CouponUserService;

@Service("couponuserService")
public class CouponUserImpl implements CouponUserService{
	@Resource(name="couponuserDAO")
	CouponUserDAO couponuserDAO;
}
