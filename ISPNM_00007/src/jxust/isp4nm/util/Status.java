package jxust.isp4nm.util;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * 保存属性的状态值
 * @author kyousuke
 *
 */
public class Status {

	private Map<Method, Object> status = new HashMap<Method, Object>();
	
	/**
	 * 保存一个属性状态
	 * @param key
	 * @param value
	 */
	public void save(Method key, Object value) {
		status.put(key, value);
	}
	
	/**
	 * 获取一个属性状态
	 * @param key
	 * @return
	 */
	public Object get(Method key) {
		return status.get(key);
	}
	
	/**
	 * 移除一个属性状态
	 * @param key
	 */
	public void remove(Method key) {
		status.remove(key);
	}
	
	/**
	 * 移除全部的属性状态
	 */
	public void remove() {
		status.clear();
	}
}
