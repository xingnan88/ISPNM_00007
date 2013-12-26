package jxust.isp4nm.dao;

import java.util.List;

public interface PageDao {
	/**
	 * 
	 * @param hql ≤È—Ø”Ôæ‰
	 * @param offset 
	 * @param length
	 * @return
	 */
	public List queryForPage(final String hql, final int offset, final int length);
	public int getAllRowCount(String hql);
	public List queryForPageAA(final String hql, final int offset, final int length);
}
