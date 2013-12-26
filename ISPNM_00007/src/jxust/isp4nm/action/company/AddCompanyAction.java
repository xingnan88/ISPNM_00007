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

@Component("addCompanyAction")
@Scope("prototype")
public class AddCompanyAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private CompanyService companyService;

	public String addCompany() throws Exception {

		String type = "";
		Company com = new Company();

		com.setName(request.getParameter("name"));
		
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
		if(addres != null) {
			address = addres;
		}
		if("请选择省".equals(province) && "请选择市".equals(city)) {
			String notInsert = "not insert address";
			request.setAttribute("notInsert", notInsert);
			return "input";
		}
		if(province == null && addres == null) {
			String notInsert = "not insert address";
			request.setAttribute("notInsert", notInsert);
			return "input";
		}
		if (address.equals(new String(address.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			com.setAddress(new String(address.getBytes("ISO-8859-1"), "GBK"));
		}else {
			com.setAddress(address);
		}
		
		com.setContact(request.getParameter("contact"));
		com.setEmail(request.getParameter("email"));

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

		com.setType(type);
		com.setRange(request.getParameter("range"));
		
		System.out.println("address:" + com.getAddress());
		this.companyService.add(com);

		return "addCompany";
	}

	public String execute() throws Exception {
		return SUCCESS;
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
}
