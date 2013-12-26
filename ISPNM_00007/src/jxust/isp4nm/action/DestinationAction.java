package jxust.isp4nm.action;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 目的跳转的action，当在一个action处理完后，可以设置参数然后返回给struts.xml的result
 * 获取设置的参数来跳转到对应的目的地
 * @author kyousuke
 *
 */
public class DestinationAction extends ActionSupport {

	private static final long serialVersionUID = -3923080081708467033L;
	
	protected final String ACTION_REDIRECT = "redirectAction";
	
	protected final String ACTION_CHAIN = "chainAction";
	
	protected final String URL_REDIRECT = "redirectUrl";

	private String url;
	
	private String namespace;
	
	private String actionName;
	
	private String actionMethod;
	
	private Map<String, String> parameters = new HashMap<String, String>();

	/**
	 * 获取跳转的URL地址
	 * @return
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * 设置跳转的URL地址
	 * @param url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 获取要跳到另一个action的命名空间
	 * @return
	 */
	public String getNamespace() {
		return namespace;
	}

	/**
	 * 设置要跳到另一个action的命名空间
	 * @param namespace
	 */
	public void setNamespace(String namespace) {
		this.namespace = namespace;
	}

	/**
	 * 获取要跳转到另一个action的名字
	 * @return
	 */
	public String getActionName() {
		return actionName;
	}

	/**
	 * 设置要跳转到另一个action的名字
	 * @param actionName
	 */
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	/**
	 * 获取要跳转到另一个action要调用的方法名
	 * @return
	 */
	public String getActionMethod() {
		return actionMethod;
	}

	/**
	 * 设置要跳转到另一个action要调用的方法名
	 * @param method
	 */
	public void setActionMethod(String method) {
		this.actionMethod = method;
	}
	
	/**
	 * 如果跳转时需要传参数，则可以添加参数到map中
	 * @param key
	 * @param value
	 */
	public void addParameter(String key, String value) {
		parameters.put(key, value);
	}
	
	/**
	 * 根据key获取参数，在result中可以使用EL表达式获取
	 * @return
	 */
	public Map<String, String> getParameters() {
		return parameters;
	}
	
	/**
	 * 将map中的参数转成一个字符串，每对键值使用|号来分隔，键和值之间使用:号分隔
	 * @return
	 */
	public String getParametersToString() {
		Collection<String> keys = parameters.keySet();
		StringBuilder sb = new StringBuilder();
		for(String k : keys) {
			sb = sb.append(k + ":" + parameters.get(k) + ";");
		}
		sb.deleteCharAt(sb.length() - 1);
		return sb.toString();
	}
	
	
	
	/**
	 * 将一条字符串解析为参数存到map中，键和值之间用:号分隔，每对键值之间用;号分隔
	 * @param parameters
	 */
	public void setStringToParameters(String parameters) {
		if(parameters == null || "".equals(parameters)) return;
		String msg = "无法解析参数，键值之间应以\":\"分隔，每对键值应以\";\"分隔";
		if(parameters.indexOf(";") == -1) {
			String[] ps = parameters.split(":");
			if(ps.length != 2) throw new RuntimeException(msg);
			this.parameters.put(ps[0], ps[1]);
		}
		String[] tmp = parameters.split(";");
		for(String s : tmp) {
			String[] ps = s.split(":");
			if(ps.length != 2) throw new RuntimeException(msg);
			this.parameters.put(ps[0], ps[1]);
		}
	}
	
	
	/**
	 * 设置跳转到其他action的辅助方法，该方法会调用其对应的属性setter
	 * @param namespace
	 * @param actionName
	 * @param actionMethod
	 */
	public void gotoAction(String namespace, String actionName, String actionMethod) {
		setNamespace(namespace);
		setActionName(actionName);
		setActionMethod(actionMethod);
	}
	
	
	/**
	 * 设置跳转到其他action的辅助方法，该方法会调用其对应的属性setter
	 * @param actionName
	 * @param actionMethod
	 */
	public void gotoAction(String actionName, String actionMethod) {
		gotoAction("", actionName, actionMethod);
	}

}
