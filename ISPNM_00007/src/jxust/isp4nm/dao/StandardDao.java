package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Standard;

import org.hibernate.criterion.DetachedCriteria;

public interface StandardDao {

	/**
	 * ����
	 * 
	 * @param standard
	 */

	public void save(Standard standard);

	/**
	 * ɾ��
	 * 
	 * @param standard
	 */

	public void delete(Standard standard);

	/**
	 * �޸�
	 * 
	 * @param standard
	 */

	public void update(Standard standard);

	/**
	 * ���ر������м�¼������
	 * 
	 * @return
	 */
	public int count();

	/**
	 * ����������ѯ��¼����
	 * 
	 * @param dc
	 * @return
	 */
	public int count(DetachedCriteria dc);

	/**
	 * ����id��ȡһ����¼
	 * 
	 * @param id
	 * @return
	 */
	public Standard load(int id);

	/**
	 * ��ѯ�����е�����
	 * 
	 * @return
	 */

	public List<Standard> list();

	/**
	 * ��ѯ�б��һ���Ӽ������offset��maxС��0�����ѯ��ȫ��������
	 * 
	 * @param offset
	 * @param max
	 * @return
	 */

	public List<Standard> list(int offset, int max);

	/**
	 * ����������ѯһ���Ӽ��б��������Ϊ�գ�����Բ�ѯ����
	 * 
	 * @param dc
	 * @param offset
	 * @param max
	 * @return
	 */

	public List<Standard> list(DetachedCriteria dc, int offset, int max);

}
