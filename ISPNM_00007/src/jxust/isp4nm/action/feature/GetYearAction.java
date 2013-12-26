package jxust.isp4nm.action.feature;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("getYearAction")
@Scope("prototype")
public class GetYearAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String getyear() throws Exception {
		Calendar cal = Calendar.getInstance(); 
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy"); 
		String curr_date = formatter.format(cal.getTime());
		int last1 = Integer.parseInt(curr_date);
		int first1 = last1 - 10;
		request.setAttribute("first1", first1);
		request.setAttribute("last1", last1);
		boolean ran = true;
		if(request.getParameter("ran") != null) {
			ran = Boolean.parseBoolean(request.getParameter("ran"));
		}
		request.setAttribute("ran", ran);
		
		return "getyear";
	}
	
	public String getyearFore() throws Exception {
		Calendar cal = Calendar.getInstance(); 
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy"); 
		String curr_date = formatter.format(cal.getTime());
		int last1 = Integer.parseInt(curr_date);
		int first1 = last1 - 10;
		request.setAttribute("first1", first1);
		request.setAttribute("last1", last1);
		boolean ran = true;
		if(request.getParameter("ran") != null) {
			ran = Boolean.parseBoolean(request.getParameter("ran"));
		}
		request.setAttribute("ran", ran);
		
		return "getyearFore";
	}

	//requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
}
