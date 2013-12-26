package jxust.isp4nm.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.MPPDao;
import jxust.isp4nm.model.MPP;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

@Component("mPPDao")
public class MPPDaoImpl extends HibernateDaoSupport implements MPPDao {
	private AnnotationSessionFactoryBean sessionFactory;

	public void add(MPP mpp) {
		this.getHibernateTemplate().save(mpp);

	}
	@SuppressWarnings("unchecked")
	public List<MPP> findAll() {
		List<MPP> list = (List<MPP>)this.getHibernateTemplate().find("from mpp");
		return list;
	}
	
	@Resource(name = "sessionFactory")
    public void setSuperSessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

	public MPP findById(int id) {
		MPP mpp = (MPP) this.getHibernateTemplate().get(MPP.class,id);
		return mpp;
	}
	public void remove(MPP mpp) {
		this.getHibernateTemplate().delete(mpp);
		
	}
	public void update(MPP mpp) {
		this.getHibernateTemplate().update(mpp);
		
	}
	
}
