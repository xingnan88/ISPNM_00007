package jxust.isp4nm.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

public class MessageAction extends DestinationAction implements ServletRequestAware {

	private static final long serialVersionUID = -7806946769880275246L;
	
	/**
	 * Ĭ�ϵ���Ϣ�б�key��ͨ����key���Դ�messages��ȡ��һ��List
	 */
	public static final String DEFAULT_KEY = "default";
	
	/**
	 * ��action�䴫����Ϣ��key�������session��
	 */
	public static final String MESSAGE_ACTION_TRANSFER = "message_action_transer";
	
	protected HttpServletRequest request;
	
	private Map<String, Object> messages;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	
	/**
	 * �����Ϣ������Ϣ����ӵ�һ��map�У�����Ĭ�ϵ�keyΪdefault
	 * ��key�����ֵ��һ��List�б����Ҫ���Լ���key������Ϣ��
	 * ʹ��setMessage(String key, Object msg)����
	 * @param msg
	 */
	public void addMessage(Object msg) {
		setMessage(DEFAULT_KEY, msg);
	}
	
	
	
	/**
	 * ͨ����ֵ��������Ϣ����Ϣ��������session�У����ڴ��ݵ�����Ŀ�ĵ�
	 * @param key
	 * @param msg
	 */
	@SuppressWarnings("unchecked")
	public void setMessage(String key, Object msg) {
		messages = noneNullMap(messages);
		if(DEFAULT_KEY.equals(key)) {
			List<Object> list = noneNullList((List<Object>)messages.get(DEFAULT_KEY));
			list.add(msg);
			messages.put(DEFAULT_KEY, list);
		} else {
			messages.put(key, msg);
		}
		request.getSession().setAttribute(MESSAGE_ACTION_TRANSFER, messages);
	}
	
	
	
	/**
	 * ȡ����Ϣ�б�
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getMessage() {
		return (List<Object>)getMessage(DEFAULT_KEY);
	}
	
	
	
	/**
	 * ���ݼ�ȡ����Ӧ����Ϣ
	 * @param key
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Object getMessage(String key) {
		Object obj = null;
		/*
		 * ��session��ȡ��������action�����õ���Ϣ
		 */
		messages = (HashMap<String, Object>)request.getSession().getAttribute(MESSAGE_ACTION_TRANSFER);
		if(DEFAULT_KEY.equals(key)) {
			obj = noneNullList((List<Object>)noneNullMap(messages).get(DEFAULT_KEY));
		} else {
			obj = noneNullMap(messages).get(key);
		}
		request.getSession().removeAttribute(MESSAGE_ACTION_TRANSFER);//���session����Ϣ
		return obj;
	}

	
	/**
	 * ���map�Ƿ�Ϊ�գ����Ϊ���򴴽�һ���µķ��أ����򷵻�ԭ�����Ǹ�
	 * @param map
	 * @return
	 */
	public Map<String, Object> noneNullMap(Map<String, Object> map) {
		return map == null ? new HashMap<String, Object>() : map;
	}
	
	
	/**
	 * ���list�Ƿ�Ϊ�գ����Ϊ���򴴽�һ���µķ��أ����򷵻�ԭ�����Ǹ�
	 * @param list
	 * @return
	 */
	public List<Object> noneNullList(List<Object> list) {
		return list == null ? new ArrayList<Object>() : list;
	}
}
