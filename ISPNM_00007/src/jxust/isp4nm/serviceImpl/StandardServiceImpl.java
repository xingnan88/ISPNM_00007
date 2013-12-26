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
     * ���
     * @param standard
     */
	public void add(Standard standard) {
		standardDao.save(standard);
	}
    
	/**
	 * ɾ��
	 * @param standard
	 */
	public void delete(Standard standard) {
		standardDao.delete(standard);
	}

	/**
	 * ����id��ɾ��
	 * @param id
	 */
	public void delete(int id) {
		Standard standard = new Standard();
		standard.setId(id);
		delete(standard);
	}

	/**
	 * ��ɾ��
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
     * �޸�
     * @param standard
     */
	public void update(Standard standard) {
		standardDao.update(standard);
	}
    /**
     * ��ʾ����
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
	 * ��������standard��ɵ��б���
	 * 
	 * @return
	 */
	public List<Standard> list() {
		return standardDao.list();
	}

	/**
	 * ����һ����Standard��ɵ��б���
	 * 
	 * @param offset
	 *            �Ӽ�����ʼλ��
	 * @param max
	 *            �Ӽ���������
	 * @return
	 */
	public List<Standard> list(int offset, int max) {
		return standardDao.list(offset, max);
	}

	/**
	 * ������Standard��ɵ���������б���
	 * 
	 * @param field
	 *            ��Ҫ������ֶ�
	 * @param orient
	 *            ����ķ���trueΪ����falseΪ����
	 * @return
	 */
	public List<Standard> sort(String field, boolean orient) {
		return sort(field, orient, 0, Integer.MAX_VALUE);
	}

	/**
	 * �������ѡ��һ����Χ������
	 * 
	 * @param field
	 *            ������ֶΣ����Ϊ�����׳�RuntimeException
	 * @param orient
	 *            ����ķ���
	 * @param offset
	 *            ���ݵ���ʼλ��
	 * @param max
	 *            ���ݵĸ���
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
	 * ����keyword�Լ�¼����ģ����������������������޶��б�Ԫ�ظ���
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
	 * ����keyword�Լ�¼����ģ���������������򣬵������б�Ԫ�ظ������޶�
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
	 * ����keyword�Լ�¼����ģ����������������͸����޶� ���keywordΪ�գ�fieldΪ�գ�������list(offset, max)����
	 * ���keywordΪ��������sort(field, orient, offset, max)����
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
	 * ����һ��ģ�����������������������Ĺؼ��ֶ������ֶν���ģ��ƥ��
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
	 * ����һ���������������
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
