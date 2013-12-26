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
	 * 默认的消息列表key，通过该key可以从messages中取出一个List
	 */
	public static final String DEFAULT_KEY = "default";
	
	/**
	 * 各action间传递消息的key，存放于session中
	 */
	public static final String MESSAGE_ACTION_TRANSFER = "message_action_transer";
	
	protected HttpServletRequest request;
	
	private Map<String, Object> messages;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	
	/**
	 * 添加消息，该消息会添加到一个map中，并且默认的key为default
	 * 该key对象的值是一个List列表，如果要用自己的key设置消息则
	 * 使用setMessage(String key, Object msg)方法
	 * @param msg
	 */
	public void addMessage(Object msg) {
		setMessage(DEFAULT_KEY, msg);
	}
	
	
	
	/**
	 * 通过键值对设置消息，消息将保存在session中，用于传递到其他目的地
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
	 * 取出消息列表
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getMessage() {
		return (List<Object>)getMessage(DEFAULT_KEY);
	}
	
	
	
	/**
	 * 根据键取出对应的消息
	 * @param key
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Object getMessage(String key) {
		Object obj = null;
		/*
		 * 从session中取出由其他action中设置的消息
		 */
		messages = (HashMap<String, Object>)request.getSession().getAttribute(MESSAGE_ACTION_TRANSFER);
		if(DEFAULT_KEY.equals(key)) {
			obj = noneNullList((List<Object>)noneNullMap(messages).get(DEFAULT_KEY));
		} else {
			obj = noneNullMap(messages).get(key);
		}
		request.getSession().removeAttribute(MESSAGE_ACTION_TRANSFER);//清除session的消息
		return obj;
	}

	
	/**
	 * 检查map是否为空，如果为空则创建一个新的返回，否则返回原来的那个
	 * @param map
	 * @return
	 */
	public Map<String, Object> noneNullMap(Map<String, Object> map) {
		return map == null ? new HashMap<String, Object>() : map;
	}
	
	
	/**
	 * 检查list是否为空，如果为空则创建一个新的返回，否则返回原来的那个
	 * @param list
	 * @return
	 */
	public List<Object> noneNullList(List<Object> list) {
		return list == null ? new ArrayList<Object>() : list;
	}
}
