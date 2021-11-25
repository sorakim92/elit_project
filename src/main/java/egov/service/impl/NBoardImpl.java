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

	@Override
	public String insertnboardWrite(NBoardVO vo) throws Exception {
		return nboardDAO.insertnboardWrite(vo);
	}

	@Override
	public NBoardVO selectnboardDetail(NBoardVO vo) throws Exception {
		return nboardDAO.selectnboardDetail(vo);
	}

	@Override
	public int updatenboard(NBoardVO vo) throws Exception {
		return nboardDAO.updatenboard(vo);
	}

	@Override
	public int deletenboard(NBoardVO vo) throws Exception {
		return nboardDAO.deletenboard(vo);
	}

	@Override
	public int updatenboardHits(NBoardVO vo) throws Exception {
		return nboardDAO.updatenboardHits(vo);
	}
}
