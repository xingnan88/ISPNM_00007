package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Standard;

import org.hibernate.criterion.DetachedCriteria;

public interface StandardDao {

	/**
	 * 保存
	 * 
	 * @param standard
	 */

	public void save(Standard standard);

	/**
	 * 删除
	 * 
	 * @param standard
	 */

	public void delete(Standard standard);

	/**
	 * 修改
	 * 
	 * @param standard
	 */

	public void update(Standard standard);

	/**
	 * 返回表中所有记录的总数
	 * 
	 * @return
	 */
	public int count();

	/**
	 * 根据条件查询记录总数
	 * 
	 * @param dc
	 * @return
	 */
	public int count(DetachedCriteria dc);

	/**
	 * 根据id获取一条记录
	 * 
	 * @param id
	 * @return
	 */
	public Standard load(int id);

	/**
	 * 查询出所有的数据
	 * 
	 * @return
	 */

	public List<Standard> list();

	/**
	 * 查询列表的一个子集，如果offset或max小于0，则查询出全部的数据
	 * 
	 * @param offset
	 * @param max
	 * @return
	 */

	public List<Standard> list(int offset, int max);

	/**
	 * 根据条件查询一个子集列表，如果条件为空，则忽略查询条件
	 * 
	 * @param dc
	 * @param offset
	 * @param max
	 * @return
	 */

	public List<Standard> list(DetachedCriteria dc, int offset, int max);

}
