package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.MetalInfoDao;
import jxust.isp4nm.model.MetalInfo;
import jxust.isp4nm.service.MetalInfoService;

@Component("metalInfoService") 
public class MetalInfoServiceImpl implements MetalInfoService {
	@Resource(name="metalInfoDao") 
	private MetalInfoDao metalInfoDao;
	                    
	public MetalInfoDao getMetalInfoDao() {
		return metalInfoDao;
	}

	public void setMetalInfoDao(MetalInfoDao metalInfoDao) {
		this.metalInfoDao = metalInfoDao;
	}

	@Override
	public List<MetalInfo> MetalList() {
		return metalInfoDao.MetalList();
	}

	@Override
	public MetalInfo findByid(int metalNo) {

		return metalInfoDao.findByid(metalNo); 
	}

	@Override
	public MetalInfo findByKeyword(String keyWord) {
		
		return metalInfoDao.findByKeyword(keyWord); 
	}

}
