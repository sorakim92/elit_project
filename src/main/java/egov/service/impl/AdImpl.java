package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdService;
import egov.service1.AdVO;

@Service("adService")
public class AdImpl implements AdService{

		@Resource(name = "adDAO")
		AdDAO adDAO;

		@Override
		public String insertAd(AdVO vo) throws Exception {
			
			return adDAO.insertAd(vo);
		}

		
}
