package jxust.isp4nm.action.company;

import java.util.ArrayList;
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

@Component("seniorSearchCompanyAction")
@Scope("prototype")
public class SeniorSearchCompanyAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private PageBean pageBean;
	private String page;
	private PageService pageService;

	private CompanyService companyService;

	private List<Company> companys = new ArrayList<Company>();

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

	public String seniorSearch() throws Exception {

		String name = request.getParameter("name");
		if (name.equals(new String(name.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			name = new String(name.getBytes("ISO-8859-1"), "GBK");
		}
		
		String address = "";
		if(request.getParameter("province") != null && !"请选择省".equals(request.getParameter("province")) && "请选择市".equals(request.getParameter("city"))) {
			address = request.getParameter("province");
		}
		if(request.getParameter("province") != null && !"请选择市".equals(request.getParameter("city"))) {
			address = request.getParameter("province") + request.getParameter("city");
		}
		if(request.getParameter("address") != null) {
			address = request.getParameter("address");
			if (address.equals(new String(address.getBytes("ISO-8859-1"),
					"ISO-8859-1"))) {
				address = new String(address.getBytes("ISO-8859-1"), "GBK");
			}
		}
		
		String type = "";
		String values[];
		values = request.getParameterValues("type");
		if(values != null) {
			if (values.length == 1) {
				type = values[0];
			}
			if (values.length == 2) {
				type = values[0] + "、" + values[1];
			}
			if (values.length == 3) {
				type = values[0] + "、" + values[1] + "、" + values[2];
			}
			if (values.length == 4) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3];
			}
			if (values.length == 5) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3] + "、" + values[4];
			}
			if (values.length == 6) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3] + "、" + values[4] + "、" + values[5];
			}
		}
		
		String range = request.getParameter("range");
		if (range.equals(new String(range.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			range = new String(range.getBytes("ISO-8859-1"), "GBK");
		}
		// 按条件查询，拼sql语句
		String hql = "from company com where 1=1";
		if (null != name && !"".equals(name)) {
			hql += " and com.name like '%" + name + "%'";
		}
		if (null != address && !"".equals(address)) {
			hql += " and com.address like '%" + address + "%'";
		}
		if (null != type && !"".equals(type)) {
			hql += " and com.type like '%" + type + "%'";
		}
		if (null != range && !"".equals(range)) {
			hql += " and com.range like '%" + range + "%'";
		}

		String action = "SeniorSearchCompany!seniorSearch.action?name=" + name
				+ "&address=" + address + "&type=" + type + "&range=" + range;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));

		return "seniorSearch";
	}

	public String seniorSearchFore() throws Exception {
		String name = request.getParameter("name");
		if (name.equals(new String(name.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			name = new String(name.getBytes("ISO-8859-1"), "GBK");
		}
		
		String address = "";
		if(request.getParameter("province") != null && !"请选择省".equals(request.getParameter("province")) && "请选择市".equals(request.getParameter("city"))) {
			address = request.getParameter("province");
		}
		if(request.getParameter("province") != null && !"请选择市".equals(request.getParameter("city"))) {
			address = request.getParameter("province") + request.getParameter("city");
		}
		if(request.getParameter("address") != null) {
			address = request.getParameter("address");
			if (address.equals(new String(address.getBytes("ISO-8859-1"),
					"ISO-8859-1"))) {
				address = new String(address.getBytes("ISO-8859-1"), "GBK");
			}
		}
		
		String type = "";
		String values[];
		values = request.getParameterValues("type");
		if(values != null) {
			if (values.length == 1) {
				type = values[0];
			}
			if (values.length == 2) {
				type = values[0] + "、" + values[1];
			}
			if (values.length == 3) {
				type = values[0] + "、" + values[1] + "、" + values[2];
			}
			if (values.length == 4) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3];
			}
			if (values.length == 5) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3] + "、" + values[4];
			}
			if (values.length == 6) {
				type = values[0] + "、" + values[1] + "、" + values[2] + "、"
						+ values[3] + "、" + values[4] + "、" + values[5];
			}
		}
		
		String range = request.getParameter("range");
		if (range
				.equals(new String(range.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			range = new String(range.getBytes("ISO-8859-1"), "GBK");
		}
		// 按条件查询，拼sql语句
		String hql = "from company com where 1=1";
		if (null != name && !"".equals(name)) {
			hql += " and com.name like '%" + name + "%'";
		}
		if (null != address && !"".equals(address)) {
			hql += " and com.address like '%" + address + "%'";
		}
		if (null != type && !"".equals(type)) {
			hql += " and com.type like '%" + type + "%'";
		}
		if (null != range && !"".equals(range)) {
			hql += " and com.range like '%" + range + "%'";
		}
		String action = "SeniorSearchCompany!seniorSearchFore.action?name=" + name
		+ "&address=" + address + "&type=" + type + "&range=" + range;
		
		int pageSize = 28;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));

		return "seniorSearchFore";
	}

	// request和response
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
