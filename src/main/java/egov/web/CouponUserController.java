package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.CouponService;
import egov.service1.CouponUserService;

@Controller
public class CouponUserController {
	@Resource(name = "couponuserService")
	CouponUserService couponuserService;
}
