package jxust.isp4nm.serviceImpl;

import java.util.LinkedList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.CompanyDao;
import jxust.isp4nm.model.Company;
import jxust.isp4nm.service.CompanyService;

@Component("companyService")
public class CompanyServiceImpl implements CompanyService {

	private CompanyDao companyDao;

	public CompanyDao getCompanyDao() {
		return companyDao;
	}

	@Resource
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	public Company getCompanyById(final String hql) throws Exception {
		return this.companyDao.getCompanyById(hql);
	}

	public void deleteCompany(int id) throws Exception {
		this.companyDao.deleteCompany(id);
	}

	public boolean deleteCompanyMore(int[] checkedId) throws Exception {
		LinkedList<Company> companys = new LinkedList<Company>();
		Company company;
		for (int i = 0; i < checkedId.length; i++) {
			System.out.println(checkedId[i] + "	");
			company = new Company();
			company.setId(checkedId[i]);
			companys.add(company);
		}
		companyDao.deleteCompanyMore(companys);
		return true;
	}

	public void add(Company company) throws Exception {
		companyDao.save(company);
	}

	public void updateCompany(Company company) throws Exception {
		this.companyDao.updateCompany(company);
	}

	public void updateBrowseTimes(int id) throws Exception {
		this.companyDao.updateBrowseTimes(id);
	}

	public Company queryPreviousCompany(final String hql) throws Exception {
		return companyDao.queryPreviousCompany(hql);
	}
	
	public Company queryNextCompany(final String hql) throws Exception {
		return companyDao.queryNextCompany(hql);
	}
}
