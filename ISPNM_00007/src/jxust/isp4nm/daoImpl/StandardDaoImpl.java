package jxust.isp4nm.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.StandardDao;
import jxust.isp4nm.model.Standard;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;


@Component
public class StandardDaoImpl implements StandardDao{
	
	private HibernateTemplate hibernateTemplate;


	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 保存
	 * @param standard
	 */

	public void save(Standard standard) {
		hibernateTemplate.save(standard);
	}
	
	/**
	 * 删除
	 * @param standard
	 */
	
	public void delete(Standard standard) {
		hibernateTemplate.delete(standard);
	}
	
	/**
	 * 修改
	 * @param standard
	 */
	
	public void update(Standard standard) {
		hibernateTemplate.update(standard);
	}
	
/*	public void showDetail(Standard standard) {
		hibernateTemplate.update(standard);
	}*/
	
	/**
	 * 返回表中所有记录的总数
	 * @return
	 */
	public int count() {
		return hibernateTemplate.loadAll(Standard.class).size();
	}
	
	/**
	 * 根据条件查询记录总数
	 * @param dc
	 * @return
	 */
	public int count(DetachedCriteria dc) {
		return hibernateTemplate.findByCriteria(dc).size();
	}
	
	/**
	 * 根据id获取一条记录
	 * @param id
	 * @return
	 */
	public Standard load(int id) {
		return hibernateTemplate.get(Standard.class, id);
	}
	
	/**
	 * 查询出所有的数据
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Standard> list() {
		return hibernateTemplate.find("from standard");
	}
	
	
	
	/**
	 * 查询列表的一个子集，如果offset或max小于0，则查询出全部的数据
	 * @param offset
	 * @param max
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Standard> list(int offset, int max) {
		return hibernateTemplate.findByCriteria(DetachedCriteria.forClass(Standard.class), offset, max);
	}
		
	/**
	 * 根据条件查询一个子集列表，如果条件为空，则忽略查询条件
	 * @param dc
	 * @param offset
	 * @param max
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Standard> list(DetachedCriteria dc, int offset, int max) {
		if(dc == null) return list(offset, max);
		return hibernateTemplate.findByCriteria(dc, offset, max);
	}

	

}
