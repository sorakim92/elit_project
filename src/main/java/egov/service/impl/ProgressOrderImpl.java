package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Service("progressorderService")
public class ProgressOrderImpl implements ProgressOrderService{

		@Resource(name = "progressorderDAO")
		ProgressOrderDAO progressorderDAO;

		@Override
		public String insertProgressOrder(ProgressOrderVO vo) throws Exception {
			return progressorderDAO.insertProgressOrder(vo);
		}

		@Override
		public int resetpreorder(ProgressOrderVO vo) throws Exception {
			return progressorderDAO.resetpreorder(vo);
		}
}
