package jxust.isp4nm.service;

import jxust.isp4nm.model.Achieve;

public interface AchieveService {
	/**
	 * 功能：往成果表里增加一条记录
	 * @param achieve
	 * @throws Exception
	 */
	public void add(Achieve achieve) throws Exception;

	public Achieve loadByAchieveId(final String hql) throws Exception;

	/**
	 * 功能：更新成果表里一条记录
	 * @param achieve
	 * @throws Exception
	 */
	public void updateAchieve(Achieve achieve) throws Exception;
	
	public void updateBrowseTimes(int achieveId) throws Exception;
	
	/**
	 * 功能：删除成果表里一条记录
	 * @param achieveId
	 * @throws Exception
	 */
	public void deleteAchieve(int achieveId) throws Exception;

	public boolean deleteAchieveMore(int[] checkedId) throws Exception;

	public Achieve queryPreviousAchieve(final String hql) throws Exception;

	public Achieve queryNextAchieve(final String hql) throws Exception;
}
