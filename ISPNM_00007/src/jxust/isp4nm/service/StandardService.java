package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.Standard;



public interface StandardService {


    /**
     * 添加
     * @param standard
     */
	public void add(Standard standard);
    
	/**
	 * 删除
	 * @param standard
	 */
	public void delete(Standard standard);
		

	/**
	 * 根据id号删除
	 * @param id
	 */
	public void delete(int id) ;
		

	/**
	 * 批删除
	 * @param standards
	 */
	public void delete(List<Standard> standards) ;
    /**
     * 修改
     * @param standard
     */
	public void update(Standard standard) ;
	
    /**
     * 显示全部数据
     * @param standard
     */
	public void showDetail(Standard standard);

	public int count() ;

	public int count(String keyword) ;

	public Standard get(int id) ;

	/**
	 * 返回所有standard组成的列表集合
	 * 
	 * @return
	 */
	public List<Standard> list() ;

	/**
	 * 返回一部分Standard组成的列表集合
	 * 
	 * @param offset
	 *            子集的起始位置
	 * @param max
	 *            子集的最大个数
	 * @return
	 */
	public List<Standard> list(int offset, int max) ;	

	/**
	 * 返回由Standard组成的已排序的列表集合
	 * 
	 * @param field
	 *            需要排序的字段
	 * @param orient
	 *            排序的方向，true为升序，false为降序
	 * @return
	 */
	public List<Standard> sort(String field, boolean orient);

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
	public List<Standard> sort(String field, boolean orient, int offset, int max);

	/**
	 * 根据keyword对记录进行模糊搜索，但不进行排序和限定列表元素个数
	 * 
	 * @param keyword
	 * @return
	 */
	public List<Standard> search(String keyword) ;
	/**
	 * 根据keyword对记录进行模糊搜索并进行排序，但不对列表元素个数做限定
	 * 
	 * @param keyword
	 * @param field
	 * @param orient
	 * @return
	 */
	public List<Standard> search(String keyword, String field, boolean orient) ;

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
			int offset, int max) ;
}
