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
	 * ����
	 * @param standard
	 */

	public void save(Standard standard) {
		hibernateTemplate.save(standard);
	}
	
	/**
	 * ɾ��
	 * @param standard
	 */
	
	public void delete(Standard standard) {
		hibernateTemplate.delete(standard);
	}
	
	/**
	 * �޸�
	 * @param standard
	 */
	
	public void update(Standard standard) {
		hibernateTemplate.update(standard);
	}
	
/*	public void showDetail(Standard standard) {
		hibernateTemplate.update(standard);
	}*/
	
	/**
	 * ���ر������м�¼������
	 * @return
	 */
	public int count() {
		return hibernateTemplate.loadAll(Standard.class).size();
	}
	
	/**
	 * ����������ѯ��¼����
	 * @param dc
	 * @return
	 */
	public int count(DetachedCriteria dc) {
		return hibernateTemplate.findByCriteria(dc).size();
	}
	
	/**
	 * ����id��ȡһ����¼
	 * @param id
	 * @return
	 */
	public Standard load(int id) {
		return hibernateTemplate.get(Standard.class, id);
	}
	
	/**
	 * ��ѯ�����е�����
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Standard> list() {
		return hibernateTemplate.find("from standard");
	}
	
	
	
	/**
	 * ��ѯ�б��һ���Ӽ������offset��maxС��0�����ѯ��ȫ��������
	 * @param offset
	 * @param max
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Standard> list(int offset, int max) {
		return hibernateTemplate.findByCriteria(DetachedCriteria.forClass(Standard.class), offset, max);
	}
		
	/**
	 * ����������ѯһ���Ӽ��б��������Ϊ�գ�����Բ�ѯ����
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
