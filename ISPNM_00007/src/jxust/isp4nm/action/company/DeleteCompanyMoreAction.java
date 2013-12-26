package jxust.isp4nm.action.company;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.service.CompanyService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("deleteCompanyMoreAction")
@Scope("prototype")
public class DeleteCompanyMoreAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private CompanyService companyService;
	private int[] checkedId;

	public int[] getCheckedId() {
		return checkedId;
	}
	public void setCheckedId(int[] checkedId) {
		this.checkedId = checkedId;
	}
	public CompanyService getCompanyService() {
		return companyService;
	}
	@Resource
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	@Override
	public String execute() throws Exception {
		if(checkedId == null) {
			return "input";
		}
		companyService.deleteCompanyMore(checkedId);
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
