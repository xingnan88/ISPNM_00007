package jxust.isp4nm.service;

import jxust.isp4nm.model.Company;

public interface CompanyService {

	public Company getCompanyById(final String hql) throws Exception;

	public void deleteCompany(int id) throws Exception;

	public boolean deleteCompanyMore(int[] checkedId) throws Exception;

	public void add(Company company) throws Exception;

	public void updateCompany(Company company) throws Exception;

	public void updateBrowseTimes(int id) throws Exception;

	public Company queryPreviousCompany(final String hql) throws Exception;
	
	public Company queryNextCompany(final String hql) throws Exception;
}

