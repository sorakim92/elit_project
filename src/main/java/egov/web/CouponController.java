package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.CouponService;

@Controller
public class CouponController {
	@Resource(name = "couponService")
	CouponService couponService;
}
