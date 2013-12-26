package jxust.isp4nm.daoImpl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.CompanyDao;
import jxust.isp4nm.model.Company;

@Component("companyDao")
public class CompanyDaoImpl extends HibernateDaoSupport implements CompanyDao {

	public Company getCompanyById(final String hql) throws Exception {
		try {
			List list = this.getHibernateTemplate().executeFind(new HibernateCallback() {

				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
					List list = query.list();
					return list;
				}
			});
			if(list.size() == 0) {
				return null;
			}
			return (Company) list.get(0);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void deleteCompany(int id) throws Exception {
		try {
			Object company = getHibernateTemplate().load(Company.class,
					new Integer(id));
			getHibernateTemplate().delete(company);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public boolean deleteCompanyMore(List<Company> companys)
			throws Exception {
		try {
			getHibernateTemplate().deleteAll(companys);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void save(Company company) throws Exception {
		try {
			getHibernateTemplate().save(company);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void updateCompany(Company company) throws Exception {
		try {
			getHibernateTemplate().update(company);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public void updateBrowseTimes(int id) throws Exception {
		try {
			Session session = this.getSession();
			session.createQuery(
					"update company set browseTimes=browseTimes+1 where id="
							+ id).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public Company queryPreviousCompany(final String hql) throws Exception {
		try{
			List list = this.getHibernateTemplate().executeFind(new HibernateCallback() {

				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
					List list = query.list();
					return list;
				}
			});
			if(list.size() == 0) {
				return null;
			}
			return (Company)list.get(0);
		} catch(Exception e) {
			e.printStackTrace();
			throw(e);
		}
	}
	
	@Override
	public Company queryNextCompany(final String hql) throws Exception {
		try{
			List list = this.getHibernateTemplate().executeFind(new HibernateCallback() {

				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
					List list = query.list();
					return list;
				}
			});
			if(list.size() == 0) {
				return null;
			}
			return (Company)list.get(0);
		} catch(Exception e) {
			e.printStackTrace();
			throw(e);
		}
	}
	
	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
}
