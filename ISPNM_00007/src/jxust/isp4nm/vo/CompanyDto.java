package jxust.isp4nm.vo;

import jxust.isp4nm.model.Company;
import jxust.isp4nm.serviceImpl.ToolsService;

public class CompanyDto extends BaseDtoImpl {
	private Company company;

	@Override
	public Object getEntity() {
		if (company == null) {
			company = new Company();
		}
		if (idStr != null) {
			company.setId(ToolsService.parseToInt(idStr));
		}
		return getCompany();
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	@Override
	public String toString() {
		return company+super.toString();
	}
	

}
