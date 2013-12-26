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

import jxust.isp4nm.dao.AchieveDao;
import jxust.isp4nm.model.Achieve;

@Component("achieveDao")
public class AchieveDaoImpl extends HibernateDaoSupport implements AchieveDao {

	public void save(Achieve achieve) {
		getHibernateTemplate().save(achieve);
	}

	public Achieve loadByAchieveId(final String hql) throws Exception {
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
			return (Achieve) list.get(0);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public void deleteAchieve(int achieveId) throws Exception {
		try {
			Object achieve = getHibernateTemplate().load(Achieve.class,
					new Integer(achieveId));
			getHibernateTemplate().delete(achieve);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public boolean deleteAchieveMore(List<Achieve> achieves)
			throws Exception {
		try {
			getHibernateTemplate().deleteAll(achieves);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public void updateAchieve(Achieve achieve) throws Exception {
		try {
			this.getHibernateTemplate().update(achieve);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public void updateBrowseTimes(int achieveId) throws Exception {
		try {
			Session session = this.getSession();
			session.createQuery(
					"update achieve set browseTimes=browseTimes+1 where achieveId="
							+ achieveId).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public Achieve queryPreviousAchieve(final String hql) throws Exception {
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
			return (Achieve)list.get(0);
		} catch(Exception e) {
			e.printStackTrace();
			throw(e);
		}
	}
	
	@Override
	public Achieve queryNextAchieve(final String hql) throws Exception {
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
			return (Achieve)list.get(0);
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
