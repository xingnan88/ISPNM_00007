package jxust.isp4nm.action.company;

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

@Component("updateCompanyAction")
@Scope("prototype")
public class UpdateCompanyAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private CompanyService companyService;
	private Company company = new Company();
	
	public String searchone() throws Exception {
		int id = 0;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		String hql0 = "from company where id=" + id;
		company = companyService.getCompanyById(hql0);
		String type = company.getType();
		request.setAttribute("type", type);
		return "searchone";
	}
	
	public String update() throws Exception {
		int id = 0;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		String type = "";
		//修改企业
		company.setId(id);
		company.setName(request.getParameter("name"));
		
		String address = "";
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String addres = request.getParameter("address");
		if(province != null && "请选择市".equals(city)) {
			address = province;
		}
		if(province != null && !"请选择市".equals(city)) {
			address = province + city;
		}
		if(addres != null || "".equals(addres)) {
			address = addres;
		}
		if("请选择省".equals(province) && "请选择市".equals(city)) {
			String notInsert = "not insert address";
			request.setAttribute("notInsert", notInsert);
			return "input";
		}
		if(province == null && "".equals(addres)) {
			String notInsert = "not insert address";
			request.setAttribute("notInsert", notInsert);
			return "input";
		}
		
		if (address.equals(new String(address.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			company.setAddress(new String(address.getBytes("ISO-8859-1"), "GBK"));
		}else {
			company.setAddress(address);
		}
		
		company.setContact(request.getParameter("contact"));
		company.setEmail(request.getParameter("email"));
		
		String values[];
		values = request.getParameterValues("type");
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

		company.setType(type);
		
		company.setRange(request.getParameter("range"));
		companyService.updateCompany(company);
		return "update";
	}
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
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
}
