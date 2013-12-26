package jxust.isp4nm.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BasicAction extends ActionSupport implements RequestAware,
		ApplicationAware, SessionAware {

	protected Map<String, Object> request;
	protected Map<String, Object> session;
	protected Map<String, Object> application;

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public void setApplication(Map<String, Object> session) {
		this.session = session;
	}

	public void setSession(Map<String, Object> application) {
		this.application = application;
	}

}
