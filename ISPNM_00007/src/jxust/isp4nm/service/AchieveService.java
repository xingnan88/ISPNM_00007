package jxust.isp4nm.service;

import jxust.isp4nm.model.Achieve;

public interface AchieveService {
	/**
	 * ���ܣ����ɹ���������һ����¼
	 * @param achieve
	 * @throws Exception
	 */
	public void add(Achieve achieve) throws Exception;

	public Achieve loadByAchieveId(final String hql) throws Exception;

	/**
	 * ���ܣ����³ɹ�����һ����¼
	 * @param achieve
	 * @throws Exception
	 */
	public void updateAchieve(Achieve achieve) throws Exception;
	
	public void updateBrowseTimes(int achieveId) throws Exception;
	
	/**
	 * ���ܣ�ɾ���ɹ�����һ����¼
	 * @param achieveId
	 * @throws Exception
	 */
	public void deleteAchieve(int achieveId) throws Exception;

	public boolean deleteAchieveMore(int[] checkedId) throws Exception;

	public Achieve queryPreviousAchieve(final String hql) throws Exception;

	public Achieve queryNextAchieve(final String hql) throws Exception;
}
