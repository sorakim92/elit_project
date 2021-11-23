package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.NBoardService;
import egov.service1.NBoardVO;

@Service("nboardService")
public class NBoardImpl implements NBoardService{
	@Resource(name = "nboardDAO")
	NBoardDAO nboardDAO;

	@Override
	public List<?> selectNboardList(NBoardVO vo) throws Exception {
		return nboardDAO.selectNboardList(vo);
	}
}
