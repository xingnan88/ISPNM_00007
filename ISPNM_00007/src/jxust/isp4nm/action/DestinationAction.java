package jxust.isp4nm.action;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Ŀ����ת��action������һ��action������󣬿������ò���Ȼ�󷵻ظ�struts.xml��result
 * ��ȡ���õĲ�������ת����Ӧ��Ŀ�ĵ�
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
	 * ��ȡ��ת��URL��ַ
	 * @return
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * ������ת��URL��ַ
	 * @param url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * ��ȡҪ������һ��action�������ռ�
	 * @return
	 */
	public String getNamespace() {
		return namespace;
	}

	/**
	 * ����Ҫ������һ��action�������ռ�
	 * @param namespace
	 */
	public void setNamespace(String namespace) {
		this.namespace = namespace;
	}

	/**
	 * ��ȡҪ��ת����һ��action������
	 * @return
	 */
	public String getActionName() {
		return actionName;
	}

	/**
	 * ����Ҫ��ת����һ��action������
	 * @param actionName
	 */
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	/**
	 * ��ȡҪ��ת����һ��actionҪ���õķ�����
	 * @return
	 */
	public String getActionMethod() {
		return actionMethod;
	}

	/**
	 * ����Ҫ��ת����һ��actionҪ���õķ�����
	 * @param method
	 */
	public void setActionMethod(String method) {
		this.actionMethod = method;
	}
	
	/**
	 * �����תʱ��Ҫ���������������Ӳ�����map��
	 * @param key
	 * @param value
	 */
	public void addParameter(String key, String value) {
		parameters.put(key, value);
	}
	
	/**
	 * ����key��ȡ��������result�п���ʹ��EL���ʽ��ȡ
	 * @return
	 */
	public Map<String, String> getParameters() {
		return parameters;
	}
	
	/**
	 * ��map�еĲ���ת��һ���ַ�����ÿ�Լ�ֵʹ��|�����ָ�������ֵ֮��ʹ��:�ŷָ�
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
	 * ��һ���ַ�������Ϊ�����浽map�У�����ֵ֮����:�ŷָ���ÿ�Լ�ֵ֮����;�ŷָ�
	 * @param parameters
	 */
	public void setStringToParameters(String parameters) {
		if(parameters == null || "".equals(parameters)) return;
		String msg = "�޷�������������ֵ֮��Ӧ��\":\"�ָ���ÿ�Լ�ֵӦ��\";\"�ָ�";
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
	 * ������ת������action�ĸ����������÷�����������Ӧ������setter
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
	 * ������ת������action�ĸ����������÷�����������Ӧ������setter
	 * @param actionName
	 * @param actionMethod
	 */
	public void gotoAction(String actionName, String actionMethod) {
		gotoAction("", actionName, actionMethod);
	}

}
