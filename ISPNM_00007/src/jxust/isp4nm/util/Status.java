package jxust.isp4nm.util;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * �������Ե�״ֵ̬
 * @author kyousuke
 *
 */
public class Status {

	private Map<Method, Object> status = new HashMap<Method, Object>();
	
	/**
	 * ����һ������״̬
	 * @param key
	 * @param value
	 */
	public void save(Method key, Object value) {
		status.put(key, value);
	}
	
	/**
	 * ��ȡһ������״̬
	 * @param key
	 * @return
	 */
	public Object get(Method key) {
		return status.get(key);
	}
	
	/**
	 * �Ƴ�һ������״̬
	 * @param key
	 */
	public void remove(Method key) {
		status.remove(key);
	}
	
	/**
	 * �Ƴ�ȫ��������״̬
	 */
	public void remove() {
		status.clear();
	}
}
