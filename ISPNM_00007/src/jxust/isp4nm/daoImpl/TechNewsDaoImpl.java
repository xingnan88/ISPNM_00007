package jxust.isp4nm.daoImpl;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import jxust.isp4nm.dao.TechNewsDao;
import jxust.isp4nm.model.TechNews;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
@Component(value="techNewsDao")
public class TechNewsDaoImpl extends HibernateDaoSupport  implements TechNewsDao {
	
   public int getRows(){
	   String hql="select count(*) from TechNews as techNews";
	   Integer count=(Integer) getHibernateTemplate().find(hql).listIterator().next();
	return count.intValue();
	   
   }
	

	public void add(TechNews techNews) {
		this.getHibernateTemplate().save(techNews);
		
	}

	public void delete(int id) {
		TechNews techNews = this.findById(id);
		this.getHibernateTemplate().delete(techNews);
	}

	public void deleteSelect(int[] ids) {
		for (int id : ids)
		{
			this.delete(id);
		}
	}

	@SuppressWarnings("unchecked")
	public List<TechNews> findAll() {
		return (List<TechNews>) this.getHibernateTemplate().find("from TechNews");
	}

	public TechNews findById(int id) {
		return (TechNews) this.getHibernateTemplate().get(TechNews.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<TechNews> list(TechNews techNews) {
		String hql = "select t from TechNews t";
		String whereClause = "";

		int id = techNews.getId();
		String newstitle = techNews.getNewstitle();
		String newscontent=techNews.getNewscontent();
		Date newstime=techNews.getNewstime();
		String newsfrom = techNews.getNewsfrom();
		String newspicture=techNews.getNewspicture();
		String bigclassname=techNews.getBigclassname();
		String smallclassname = techNews.getSmallclassname();
		String isimg=techNews.getIsimg();
		

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("newstitle", newstitle);
		map.put("newscontent", newscontent);
		map.put("newstime", newstime);
		map.put("newsfrom", newsfrom);
		map.put("newspicture", newspicture);
		map.put("newsfrom", newsfrom);
		map.put("bigclassname", bigclassname);
		map.put("smallclassname", smallclassname);
		map.put("isimg", isimg);
	

		Set<String> keys = map.keySet();
		for (String key : keys)
		{
			Object value = map.get(key);
			if (value != null && value.toString().trim().length() != 0)
			{
				if (whereClause.length() == 0)
				{
					whereClause += "t." + key + " like '%" + map.get(key) + "%'";
				} else
				{
					whereClause += "and t." + key + " like '%" + map.get(key) + "%'";
				}
			}
		}
		hql = hql + " " + "where" + " " + whereClause;
		System.out.println(hql);
		return (List<TechNews>) this.getHibernateTemplate().find(hql);
	}

	public void update(TechNews techNews) {
		this.getHibernateTemplate().update(techNews);
		
	}

	public void updateBrowseTimes(int id) {
		try {
			Session session =this.getSession();
			session.createQuery(
					"update TechNews set browseTimes=browseTimes+1 where id="
							+ id).executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				throw (e);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
	}
	
	public List<TechNews> listNew(String bigCategory, String smallCategory) {
		final String hql="from TechNews t where t.bigclassname like '%"+bigCategory+"%' and t.smallclassname like '%"+smallCategory+"%' order by t.newstime desc";
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
	
	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	


}
