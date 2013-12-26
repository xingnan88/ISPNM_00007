package jxust.isp4nm.action.feature;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.service.AchieveService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("deleteAchieveMoreAction")
@Scope("prototype")
public class DeleteAchieveMoreAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private AchieveService achieveService;
	private int[] checkedId;

	public int[] getCheckedId() {
		return checkedId;
	}
	public void setCheckedId(int[] checkedId) {
		this.checkedId = checkedId;
	}
	public AchieveService getAchieveService() {
		return achieveService;
	}
	@Resource
	public void setAchieveService(AchieveService achieveService) {
		this.achieveService = achieveService;
	}

	@Override
	public String execute() throws Exception {
		if(checkedId == null) {
			return "input";
		}
		String achieveType = "002000";
		request.setAttribute("achieveType", achieveType);
		
		achieveService.deleteAchieveMore(checkedId);
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
}
