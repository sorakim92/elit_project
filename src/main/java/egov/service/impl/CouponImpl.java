package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.CouponService;

@Service("couponService")
public class CouponImpl implements CouponService{
	@Resource(name = "couponDAO")
	CouponDAO couponDAO;
}
