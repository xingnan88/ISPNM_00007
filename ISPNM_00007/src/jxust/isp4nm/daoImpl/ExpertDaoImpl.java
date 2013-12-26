package jxust.isp4nm.daoImpl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.ExpertDao;
import jxust.isp4nm.model.Expert;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

@Component("expertDao")
public class ExpertDaoImpl extends HibernateDaoSupport implements ExpertDao
{

	private AnnotationSessionFactoryBean sessionFactory;

	public void deleteById(int id)
	{
		getHibernateTemplate().delete(
				getHibernateTemplate().get(Expert.class, id));
	}

	public List<Expert> find(String sql, int page)
	{
		final String sqlString = sql;
		final int pageInt = page;

		return getHibernateTemplate().executeFind(new HibernateCallback()
		{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException
			{
				Query query = session.createQuery(sqlString);

				query.setFirstResult((pageInt - 1) * 20);
				query.setMaxResults(20);
				List<Expert> list = query.list();

				return list;

			}
		});
	}

	public List<Expert> find1(String sql, int page)
	{
		final String sqlString = sql;
		final int pageInt = page;

		return getHibernateTemplate().executeFind(new HibernateCallback()
		{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException
			{
				Query query = session.createQuery(sqlString);

				query.setFirstResult((pageInt - 1) * 30);
				query.setMaxResults(30);
				List<Expert> list = query.list();

				return list;

			}
		});
	}

	public List<Expert> findAll(final int page)
	{
		final String sql = "from Expert";

		return getHibernateTemplate().executeFind(new HibernateCallback()
		{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException
			{
				Query query = session.createQuery(sql);
				query.setFirstResult((page - 1) * 20);
				query.setMaxResults(20);
				List<Expert> list = query.list();
				return list;
			}
		});

	}

	public Expert findById(int id)
	{

		return getHibernateTemplate().get(Expert.class, id);

	}

	public List<Expert> findByResearchFields(String researchFields)
	{  
		
		final String sql = "from Expert where researchFields='"
				+ researchFields + "'";
		
		return getHibernateTemplate().executeFind(new HibernateCallback()
		{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException
			{
				Query query = session.createQuery(sql);
				query.setFirstResult(0);
				query.setMaxResults(30);
				List<Expert> list = query.list();
				return list;
			}
		});

	}

	public List<Expert> findByResearchFieldsAll(String researchFields,
			final int page)
	{   
		final String sql = "from Expert where researchFields='"
				+ researchFields + "'" + "order by id DESC";
		return getHibernateTemplate().executeFind(new HibernateCallback()
		{
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException
			{
				Query query = session.createQuery(sql);
				return query.setFirstResult((page - 1) * 30).setMaxResults(30).list();
			}
		});
	}

	public Expert getExpert(int id)
	{

		return getHibernateTemplate().get(Expert.class, id);
	}

	public int getRows()
	{
		return getHibernateTemplate().find("from Expert").size();
	}

	public int getRows(String researchFields)
	{
		
		return getHibernateTemplate().find(
				"from Expert where researchFields='" + researchFields + "'")
				.size();
	
	}

	public int getRows(String researchFields, String name)
	{
		String sql = "";
		if (researchFields.equals("研究领域")) {
			if("".equals(name) || name == null) {
				sql = "from Expert ";
			}else {
				sql = "from Expert where  name like '%" + name + "%'";
			}
		} else 
		{
			if("".equals(name) || name == null) {
				sql = "from Expert where researchFields='" + researchFields + "'";
			} else {
				sql = "from Expert where researchFields='" + researchFields + "'"
					+ "  and name like '%" + name + "%'";
			}
		}
		return getHibernateTemplate().find(sql).size();
	}

	public int getRows(String researchFields, String name, String majorFields,
			String workplace, String researchCon, String workposition)
	{

		StringBuffer sql = new StringBuffer();
		if (researchFields.equals("研究领域"))
		{
			sql.append("from Expert where researchFields like '%%'");
		} else
		{
			sql.append("from Expert where researchFields like '%"
					+ researchFields + "%'");
		}
		if (!name.equals(""))
		{
			sql.append("  and name like '%" + name + "%'");
		}
		if (!majorFields.equals(""))
		{
			sql.append(" and majorFields like '%" + majorFields + "%'");
		}
		if (!workplace.equals(""))
		{
			sql.append(" and workplace like '%" + workplace + "%'");
		}
		if (!researchCon.equals(""))
		{
			sql.append(" and researchCon like '%" + researchCon + "%'");
		}
		if (!workposition.equals(""))
		{
			sql.append(" and workposition like '%" + workposition + "%'");
		}
		return getHibernateTemplate().find(sql.toString()).size();

	}

	public void save(Expert expert)
	{
		getHibernateTemplate().save(expert);
	}

	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory)
	{
		super.setSessionFactory(sessionFactory);
	}

	public void update(Expert expert)
	{
		getHibernateTemplate().update(expert);

	}

	public void update(int id)
	{
		getHibernateTemplate().update(
				getHibernateTemplate().get(Expert.class, id));

	}
	
	public List<Expert> listNewExpert(String category) {
		final String hql="from Expert p where p.researchFields='"+category+"'order by p.id desc";
		List list = this.getHibernateTemplate().executeFind(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery(hql);
				query.setFirstResult(0);
				query.setMaxResults(8);
				List list = query.list();
				return list;
			}
		});
		return list;
	}

}
