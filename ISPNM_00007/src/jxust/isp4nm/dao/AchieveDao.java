package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Achieve;

public interface AchieveDao {
	public void save(Achieve achieve) throws Exception;

	public Achieve loadByAchieveId(final String hql) throws Exception;

	public void updateAchieve(Achieve achieve) throws Exception;
	
	public void updateBrowseTimes(int achieveId) throws Exception;
	
	public void deleteAchieve(int achieveId) throws Exception;

	public boolean deleteAchieveMore(List<Achieve> achieves) throws Exception;

	public Achieve queryPreviousAchieve(final String hql) throws Exception;
	
	public Achieve queryNextAchieve(final String hql) throws Exception;

}
