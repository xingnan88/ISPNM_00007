package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Company;

public interface CompanyDao {

	public Company getCompanyById(final String hql) throws Exception;

	public void deleteCompany(int id) throws Exception;

	public boolean deleteCompanyMore(List<Company> companys) throws Exception;

	public void save(Company company) throws Exception;

	public void updateCompany(Company company) throws Exception;

	public void updateBrowseTimes(int id) throws Exception;

	public Company queryPreviousCompany(final String hql) throws Exception;
	
	public Company queryNextCompany(final String hql) throws Exception;
}
