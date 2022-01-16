package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AdService;
import egov.service1.AdVO;
import egov.service1.NBoardVO;

@Service("adService")
public class AdImpl implements AdService{

		@Resource(name = "adDAO")
		AdDAO adDAO;

		@Override
		public String insertAd(AdVO vo) throws Exception {
			
			return adDAO.insertAd(vo);
		}
		//강
		@Override
		public List<?> selectadService(AdVO vo) throws Exception {
			
			return adDAO.selectadService(vo);
		}
		//강
		@Override
		public AdVO selectadDetailService(AdVO vo) throws Exception {

			return adDAO.selectadDetailService(vo);
		}
		@Override
		public int adApproveService(AdVO vo) throws Exception {
			
			return adDAO.adApproveService(vo);
		}
		@Override
		public int selectcount(AdVO vo) throws Exception {
			return adDAO.selectcount(vo);
		}
		@Override
		public int selectAdTotal(AdVO vo) throws Exception {
			return adDAO.selectAdTotal(vo);
		}
		@Override
		public List<?> selectAdBanner(AdVO avo) throws Exception {
			return adDAO.selectAdBanner(avo);
		}
		@Override
		public int updateAdStatus(AdVO vo) throws Exception {
			return adDAO.updateAdStatus(vo);
		}

		

		
}
