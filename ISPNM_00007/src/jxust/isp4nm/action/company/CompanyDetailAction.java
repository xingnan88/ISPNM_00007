package jxust.isp4nm.action.company;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Company;
import jxust.isp4nm.service.CompanyService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("companyDetailAction")
@Scope("prototype")
public class CompanyDetailAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private CompanyService companyService;

	private Company company = new Company();
	private List<Company> companys = new ArrayList<Company>();
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String detail() throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("id", id);
		String hql0 = "from company where id=" + id;
		company = companyService.getCompanyById(hql0);
		return "detail";
	}
	
	public String detailFore() throws Exception {
		int id = 0;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		request.setAttribute("id", id);
		//修改浏览次数
		this.companyService.updateBrowseTimes(id);
		
		String hql0 = "from company where id=" + id;
		company = companyService.getCompanyById(hql0);
		if(company == null) {
			String not_file = "not the file";
			request.setAttribute("not_file", not_file);
			return "input";
		}
		//得到上下篇
		int previousId = 0, nextId = 0;
		String previousName = "", nextName = "";
		//得到上一篇
		String hql = "from company where id<"
					+ id + " order by id desc";
		Company previous = companyService.queryPreviousCompany(hql);
		//得到下一篇
		String hql2 = "from company where id>"
					+ id + " order by id";
		Company next = companyService.queryNextCompany(hql2);
		
		if(previous != null) {
			previousId = previous.getId();
			previousName = previous.getName();
		}
		if(next != null) {
			nextId = next.getId();
			nextName = next.getName();
		}
		
		request.setAttribute("previousId", previousId);
		request.setAttribute("previousName", previousName);
		request.setAttribute("nextId", nextId);
		request.setAttribute("nextName", nextName);
		
		return "detailFore";
	}
	
	//request和response
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public CompanyService getCompanyService() {
		return companyService;
	}
	@Resource
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	public List<Company> getCompanys() {
		return companys;
	}

	public void setCompanys(List<Company> companys) {
		this.companys = companys;
	}
}
