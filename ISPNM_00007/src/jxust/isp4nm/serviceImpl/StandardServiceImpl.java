package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.StandardDao;
import jxust.isp4nm.model.Standard;
import jxust.isp4nm.service.StandardService;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;


@Component
public class StandardServiceImpl implements StandardService{

	private StandardDao standardDao;

	@Resource
	public void setStandardDao(StandardDao standardDao) {
		this.standardDao = standardDao;
	}
    /**
     * 添加
     * @param standard
     */
	public void add(Standard standard) {
		standardDao.save(standard);
	}
    
	/**
	 * 删除
	 * @param standard
	 */
	public void delete(Standard standard) {
		standardDao.delete(standard);
	}

	/**
	 * 根据id号删除
	 * @param id
	 */
	public void delete(int id) {
		Standard standard = new Standard();
		standard.setId(id);
		delete(standard);
	}

	/**
	 * 批删除
	 * @param standards
	 */
	public void delete(List<Standard> standards) {
		if (standards != null) {
			for (Standard standard : standards) {
				standardDao.delete(standard);
			}
		}
	}
    /**
     * 修改
     * @param standard
     */
	public void update(Standard standard) {
		standardDao.update(standard);
	}
    /**
     * 显示数据
     * @param standard
     */
	public void showDetail(Standard standard) {
		standardDao.update(standard);
	}

	public int count() {
		return standardDao.count();
	}

	public int count(String keyword) {
		DetachedCriteria dc = createDetachedCriteria().add(
				createSearchCriterion(keyword));
		return standardDao.count(dc);
	}

	public Standard get(int id) {
		return standardDao.load(id);
	}

	/**
	 * 返回所有standard组成的列表集合
	 * 
	 * @return
	 */
	public List<Standard> list() {
		return standardDao.list();
	}

	/**
	 * 返回一部分Standard组成的列表集合
	 * 
	 * @param offset
	 *            子集的起始位置
	 * @param max
	 *            子集的最大个数
	 * @return
	 */
	public List<Standard> list(int offset, int max) {
		return standardDao.list(offset, max);
	}

	/**
	 * 返回由Standard组成的已排序的列表集合
	 * 
	 * @param field
	 *            需要排序的字段
	 * @param orient
	 *            排序的方向，true为升序，false为降序
	 * @return
	 */
	public List<Standard> sort(String field, boolean orient) {
		return sort(field, orient, 0, Integer.MAX_VALUE);
	}

	/**
	 * 排序后再选择一个范围的数据
	 * 
	 * @param field
	 *            排序的字段，如果为空则抛出RuntimeException
	 * @param orient
	 *            排序的方向
	 * @param offset
	 *            数据的起始位置
	 * @param max
	 *            数据的个数
	 * @return
	 */
	public List<Standard> sort(String field, boolean orient, int offset, int max) {
		if (field == null || "".equals(field)) {
			return list(offset, max);
		}
		DetachedCriteria dc = createDetachedCriteria().addOrder(
				createOrder(field, orient));
		return standardDao.list(dc, offset, max);
	}

	/**
	 * 根据keyword对记录进行模糊搜索，但不进行排序和限定列表元素个数
	 * 
	 * @param keyword
	 * @return
	 */
	public List<Standard> search(String keyword) {
		DetachedCriteria dc = createDetachedCriteria();
		dc.add(createSearchCriterion(keyword));
		return standardDao.list(dc, 0, Integer.MAX_VALUE);
	}

	/**
	 * 根据keyword对记录进行模糊搜索并进行排序，但不对列表元素个数做限定
	 * 
	 * @param keyword
	 * @param field
	 * @param orient
	 * @return
	 */
	public List<Standard> search(String keyword, String field, boolean orient) {
		return search(keyword, field, orient, 0, Integer.MAX_VALUE);
	}

	/**
	 * 根据keyword对记录进行模糊搜索并进行排序和个数限定 如果keyword为空，field为空，则会调用list(offset, max)方法
	 * 如果keyword为空则会调用sort(field, orient, offset, max)方法
	 * 
	 * @param keyword
	 * @param field
	 * @param orient
	 * @param offset
	 * @param max
	 * @return
	 */
	public List<Standard> search(String keyword, String field, boolean orient,
			int offset, int max) {
		DetachedCriteria dc = createDetachedCriteria();
		if (field != null && !"".equals(field)) {
			dc.addOrder(createOrder(field, orient));
		}
		dc.add(createSearchCriterion(keyword));
		return standardDao.list(dc, offset, max);
	}

	/**
	 * 创建一个模糊搜索的条件，根据所给的关键字对所有字段进行模糊匹配
	 * 
	 * @param kw
	 * @return
	 */
	protected Criterion createSearchCriterion(String kw) {
		kw = "%" + kw + "%";
		return
		Restrictions.or(Restrictions.like("title", kw), Restrictions.or(
				Restrictions.like("classify", kw), Restrictions.or(Restrictions
						.like("department", kw), Restrictions.or(Restrictions
						.like("fbdep", kw), Restrictions.or(Restrictions.like(
						"createtime", kw), Restrictions.or(Restrictions.like(
						"number", kw), Restrictions.or(Restrictions.like(
						"imptime", kw), Restrictions.or(Restrictions.like(
						"fbdep", kw), Restrictions.like("content", kw))))))))

		);

	}

	
	/*
	 * protected Criterion createSearchCriterion(String kw) { kw = "%" + kw +
	 * "%"; return Restrictions.or( Restrictions.or( Restrictions.like("title",
	 * kw), Restrictions.like("classify", kw)), Restrictions.or(
	 * Restrictions.like("department", kw), Restrictions.like("fbdep", kw)) ); }
	 */

	/**
	 * 创建一个具有排序的条件
	 * 
	 * @param field
	 * @param orient
	 * @return
	 */
	protected Order createOrder(String field, boolean orient) {
		return orient ? Order.asc(field) : Order.desc(field);
	}

	protected final DetachedCriteria createDetachedCriteria() {
		return DetachedCriteria.forClass(Standard.class);
	}
}
