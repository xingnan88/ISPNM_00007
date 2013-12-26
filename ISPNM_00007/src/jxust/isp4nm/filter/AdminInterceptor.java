package jxust.isp4nm.filter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;
import org.junit.runner.Request;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AdminInterceptor extends AbstractInterceptor{
	public static final String[] CHECK = new String[]{"add","update","delete","deleteMore"};

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		Map<String,Object> session = ai.getInvocationContext().getSession();
		HttpServletRequest request = (HttpServletRequest) ai.getInvocationContext().get(StrutsStatics.HTTP_REQUEST); 

		String actionName = ai.getInvocationContext().getName();
		
		request.setAttribute("tips", "会话超时，请重新登录。");
		
		for(String c : CHECK){
			if(c.equals(actionName)) {
				if(session.get("admin") == null)
					return "error";
			}
		}
		return ai.invoke();
	}
	
}
