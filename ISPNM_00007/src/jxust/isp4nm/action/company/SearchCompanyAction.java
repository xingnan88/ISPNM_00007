package jxust.isp4nm.action.company;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Company;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.CompanyService;
import jxust.isp4nm.service.PageService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("searchCompanyAction")
@Scope("prototype")
public class SearchCompanyAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;
	
	private CompanyService companyService;
	
	private List<Company> companys;
	
	public List<Company> getCompanys() {
		return companys;
	}
	public void setCompanys(List<Company> companys) {
		this.companys = companys;
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String searchCompany() throws Exception {
		page = request.getParameter("page");
		if(page == null || "".equals(page)) {
			page = "1";
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord == null) {
			keyWord = "";
		}
		else if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from company where name like '%" + keyWord + "%'";
		String action = "CompanyList!list.action?keyWord="+keyWord;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
			Integer.parseInt(page)));
		
		request.setAttribute("keyWord", keyWord);
		return "searchCompany";
	}
	
	public String searchCompanyFore() throws Exception {
		page = request.getParameter("page");
		if(page == null || "".equals(page)) {
			page = "1";
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord == null) {
			keyWord = "";
		}
		else if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from company where name like '%" + keyWord + "%'";
		String action = "CompanyList!listFore.action?keyWord="+keyWord;
		int pageSize = 28;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
			Integer.parseInt(page)));
		
		request.setAttribute("keyWord", keyWord);
		return "searchCompanyFore";
	}
	
	//requestºÍresponse
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
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public PageService getPageService() {
		return pageService;
	}
	@Resource(name = "pageService")
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
}
