package jxust.isp4nm.util;

import java.util.ArrayList;
import java.util.List;

/**
 * ��ҳ����չ������ʱ�ĸ�����
 * @author gaohuixiang
 *
 * @param <E>
 */
public class Table<E> {
	
	public static String ASC = "asc";
	
	public static String DESC = "desc";

	private List<E> list;
	
	private int row = 0;
	
	private String sortProperty;
	
	private String sortOrient;
	
	private String keyword;
	
	public Table() {
		sortProperty = "";
		sortOrient = "";
		keyword = "";
	}
	
	public void setList(List<E> list) {
		this.list = noneNullList(list);
	}
	
	
	
	public List<E> getList() {
		return noneNullList(list);
	}
	
	
	/**
	 * ��ȡҪ������ֶ�
	 * @return
	 */
	public String getSortProperty() {
		return sortProperty;
	}



	/**
	 * ����Ҫ������ֶ�
	 * @param sortProperty
	 */
	public void setSortProperty(String sortProperty) {
		this.sortProperty = sortProperty;
	}


	/**
	 * ��ȡ����ķ���
	 * @return
	 */
	public String getSortOrient() {
		return sortOrient;
	}


	/**
	 * ��������ķ��� DESC��ASC
	 * @param sortOrient
	 */
	public void setSortOrient(String sortOrient) {
		this.sortOrient = sortOrient;
	}


	/**
	 * ��ȡ�����Ĺؼ���
	 * @return
	 */
	public String getKeyword() {
		return keyword;
	}

	/**
	 * ���������Ĺؼ���
	 * @param keyword
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	/**
	 * �ڱ����б�ʱ�����÷������ڱ�������(ͨ��EL����rowSimple�ȿ�)
	 * �����ǰ���ǵ����򷵻�true�����򷵻�false
	 * @return
	 */
	public boolean isRowSimple() {
		return row++ % 2 != 0;
	}
	
	
	
	/**
	 * �Ƿ���Ҫ�������sortProperty��Ϊ�ղ��Ҳ�Ϊ�մ��򷵻�true�����򷵻�false
	 * @return
	 */
	public boolean isNeedSort() {
		return sortProperty != null && !"".equals(sortProperty);
	}
	
	
	/**
	 * �Ƿ���Ҫ���������keyword��Ϊ�ղ��Ҳ�Ϊ�մ��򷵻�true�����򷵻�false
	 * @return
	 */
	public boolean isNeedSearch() {
		return keyword != null && !"".equals(keyword);
	}
	
	public List<E> noneNullList(List<E> list) {
		return list == null ? new ArrayList<E>(1) : list;
	}
}
