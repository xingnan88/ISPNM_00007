package jxust.isp4nm.util;

public class Pager {

	private int items;
	
	private int maxPageItems;
	
	private int maxIndexPages;
	
	private int offset;
	

	public Pager() {
		items = 0;          //��¼��
		maxPageItems = 20;   //ÿҳ��ʾ��¼��
		maxIndexPages = 5;  //�������ҳ
		offset = 0;         //��ǰ��¼
	}

	public int getItems() {
		return items;
	}

	public void setItems(int items) {
		this.items = items;
	}

	public int getMaxPageItems() {
		return maxPageItems;
	}

	public void setMaxPageItems(int maxPageItems) {
		this.maxPageItems = maxPageItems;
	}

	public int getMaxIndexPages() {
		return maxIndexPages;
	}

	public void setMaxIndexPages(int maxIndexPages) {
		this.maxIndexPages = maxIndexPages;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}
	
	
	
	/**
	 * ��ȡ�ܹ��ж���ҳ��
	 * @return
	 */
	public int getPageCount() {
		int pc = items % maxPageItems != 0 ? 1 : 0;
		pc = pc + items / maxPageItems;
		return pc;
	}
}
