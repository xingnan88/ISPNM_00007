package jxust.isp4nm.action.company;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import jxust.isp4nm.model.Company;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.CompanyService;
import jxust.isp4nm.service.PageService;

import com.opensymphony.xwork2.ActionSupport;

@Component("companyAction")
@Scope("prototype")
public class CompanyListAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;

	@Resource
	private CompanyService companyService;

	private List<Company> companys;

	public String list() throws Exception {
		String keyWord = request.getParameter("keyWord");
		if(keyWord != null) {
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
			
			String hql = "from company where name like '%" + keyWord + "%'";
			String action = "CompanyList!list.action?keyWord="+keyWord;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		else {
			String hql = "from company";
			String action = "CompanyList!list.action";
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		}
		
		request.setAttribute("keyWord", keyWord);
		return "list";
	}
	
	public String list2() throws Exception {
		String hql = "from company";
		String action = "CompanyList!list2.action";
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
			Integer.parseInt(page)));
		
		return "list2";
	}

	public String listFore() throws Exception {
		String keyWord = request.getParameter("keyWord");
		if(keyWord != null) {
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
			
			String hql = "from company where name like '%" + keyWord + "%'";
			String action = "CompanyList!listFore.action?keyWord="+keyWord;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		else {
			String hql = "from company";
			String action = "CompanyList!listFore.action";
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		}
		
		request.setAttribute("keyWord", keyWord);
		return "listFore";
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

	// requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
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
