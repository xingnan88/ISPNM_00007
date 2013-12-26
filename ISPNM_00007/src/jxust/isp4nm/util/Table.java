package jxust.isp4nm.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 在页面上展现数据时的辅助类
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
	 * 获取要排序的字段
	 * @return
	 */
	public String getSortProperty() {
		return sortProperty;
	}



	/**
	 * 设置要排序的字段
	 * @param sortProperty
	 */
	public void setSortProperty(String sortProperty) {
		this.sortProperty = sortProperty;
	}


	/**
	 * 获取排序的方向
	 * @return
	 */
	public String getSortOrient() {
		return sortOrient;
	}


	/**
	 * 设置排序的方法 DESC或ASC
	 * @param sortOrient
	 */
	public void setSortOrient(String sortOrient) {
		this.sortOrient = sortOrient;
	}


	/**
	 * 获取搜索的关键字
	 * @return
	 */
	public String getKeyword() {
		return keyword;
	}

	/**
	 * 设置搜索的关键字
	 * @param keyword
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	/**
	 * 在遍历列表时，将该方法放在遍历体内(通过EL调用rowSimple既可)
	 * 如果当前行是单数则返回true，否则返回false
	 * @return
	 */
	public boolean isRowSimple() {
		return row++ % 2 != 0;
	}
	
	
	
	/**
	 * 是否需要排序，如果sortProperty不为空并且不为空串则返回true，否则返回false
	 * @return
	 */
	public boolean isNeedSort() {
		return sortProperty != null && !"".equals(sortProperty);
	}
	
	
	/**
	 * 是否需要搜索，如果keyword不为空并且不为空串则返回true，否则返回false
	 * @return
	 */
	public boolean isNeedSearch() {
		return keyword != null && !"".equals(keyword);
	}
	
	public List<E> noneNullList(List<E> list) {
		return list == null ? new ArrayList<E>(1) : list;
	}
}
