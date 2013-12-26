package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.MPPDao;
import jxust.isp4nm.model.MPP;
import jxust.isp4nm.service.MPPService;

@Component("mppService")
public class MPPServiceImpl implements MPPService {
	@Resource
	private MPPDao mppDao;
	public void add(MPP mpp) {
		mppDao.add(mpp);	
	}
	public List<MPP> findAll() {		
		return this.mppDao.findAll();
	}
	public MPP findById(int id) {		
		return this.mppDao.findById(id);
	}
	public void remove(MPP mpp) {
		this.mppDao.remove(mpp);
		
	}
	public void update(MPP mpp) {
		this.mppDao.update(mpp);
		
	}
	
}
