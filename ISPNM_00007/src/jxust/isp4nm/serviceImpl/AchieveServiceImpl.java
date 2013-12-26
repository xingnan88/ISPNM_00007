package jxust.isp4nm.serviceImpl;

import java.util.LinkedList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.AchieveDao;
import jxust.isp4nm.model.Achieve;
import jxust.isp4nm.service.AchieveService;

@Component("achieveService")
public class AchieveServiceImpl implements AchieveService {

	private AchieveDao achieveDao;

	public AchieveDao getAchieveDao() {
		return achieveDao;
	}

	@Resource
	public void setAchieveDao(AchieveDao achieveDao) {
		this.achieveDao = achieveDao;
	}

	public void add(Achieve achieve) throws Exception {
		achieveDao.save(achieve);
	}

	public Achieve loadByAchieveId(final String hql) throws Exception {
		return this.achieveDao.loadByAchieveId(hql);
	}

	@Override
	public void deleteAchieve(int achieveId) throws Exception {

		achieveDao.deleteAchieve(achieveId);
	}

	public boolean deleteAchieveMore(int[] checkedId) throws Exception {
		LinkedList<Achieve> achieves = new LinkedList<Achieve>();
		Achieve achieve;
		for (int i = 0; i < checkedId.length; i++) {
			System.out.println(checkedId[i] + "	");
			achieve = new Achieve();
			achieve.setAchieveId(checkedId[i]);
			achieves.add(achieve);
		}
		achieveDao.deleteAchieveMore(achieves);
		return true;
	}

	@Override
	public void updateAchieve(Achieve achieve) throws Exception {
		achieveDao.updateAchieve(achieve);
	}
	
	@Override
	public void updateBrowseTimes(int achieveId) throws Exception {
		achieveDao.updateBrowseTimes(achieveId);
	}
	
	public Achieve queryPreviousAchieve(final String hql) throws Exception {
		return achieveDao.queryPreviousAchieve(hql);
	}
	
	public Achieve queryNextAchieve(final String hql) throws Exception {
		return achieveDao.queryNextAchieve(hql);
	}
}
