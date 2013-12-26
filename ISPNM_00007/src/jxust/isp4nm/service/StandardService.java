package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.Standard;



public interface StandardService {


    /**
     * ���
     * @param standard
     */
	public void add(Standard standard);
    
	/**
	 * ɾ��
	 * @param standard
	 */
	public void delete(Standard standard);
		

	/**
	 * ����id��ɾ��
	 * @param id
	 */
	public void delete(int id) ;
		

	/**
	 * ��ɾ��
	 * @param standards
	 */
	public void delete(List<Standard> standards) ;
    /**
     * �޸�
     * @param standard
     */
	public void update(Standard standard) ;
	
    /**
     * ��ʾȫ������
     * @param standard
     */
	public void showDetail(Standard standard);

	public int count() ;

	public int count(String keyword) ;

	public Standard get(int id) ;

	/**
	 * ��������standard��ɵ��б���
	 * 
	 * @return
	 */
	public List<Standard> list() ;

	/**
	 * ����һ����Standard��ɵ��б���
	 * 
	 * @param offset
	 *            �Ӽ�����ʼλ��
	 * @param max
	 *            �Ӽ���������
	 * @return
	 */
	public List<Standard> list(int offset, int max) ;	

	/**
	 * ������Standard��ɵ���������б���
	 * 
	 * @param field
	 *            ��Ҫ������ֶ�
	 * @param orient
	 *            ����ķ���trueΪ����falseΪ����
	 * @return
	 */
	public List<Standard> sort(String field, boolean orient);

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
	public List<Standard> sort(String field, boolean orient, int offset, int max);

	/**
	 * ����keyword�Լ�¼����ģ����������������������޶��б�Ԫ�ظ���
	 * 
	 * @param keyword
	 * @return
	 */
	public List<Standard> search(String keyword) ;
	/**
	 * ����keyword�Լ�¼����ģ���������������򣬵������б�Ԫ�ظ������޶�
	 * 
	 * @param keyword
	 * @param field
	 * @param orient
	 * @return
	 */
	public List<Standard> search(String keyword, String field, boolean orient) ;

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
			int offset, int max) ;
}
