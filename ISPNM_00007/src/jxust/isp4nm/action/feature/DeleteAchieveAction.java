package jxust.isp4nm.action.feature;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Achieve;
import jxust.isp4nm.service.AchieveService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("deleteAchieveAction")
@Scope("prototype")
public class DeleteAchieveAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private AchieveService achieveService;
	private Achieve achieve = new Achieve();

	public AchieveService getAchieveService() {
		return achieveService;
	}
	@Resource
	public void setAchieveService(AchieveService achieveService) {
		this.achieveService = achieveService;
	}

	@Override
	public String execute() throws Exception {

		int achieveId = Integer.parseInt(request.getParameter("achieveId"));
		String achieveType = request.getParameter("achieveType");
		request.setAttribute("achieveType", achieveType);
		achieveService.deleteAchieve(achieveId);
		return SUCCESS;
	}
	//requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	public Achieve getAchieve() {
		return achieve;
	}
	public void setAchieve(Achieve achieve) {
		this.achieve = achieve;
	}
}
