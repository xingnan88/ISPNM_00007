package jxust.isp4nm.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.AdminDao;
import jxust.isp4nm.model.Admin;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
@Component("adminDao")
public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
	private AnnotationSessionFactoryBean sessionFactory;
	
	@SuppressWarnings("unchecked")
	public Admin queryByName(String name) {
		List<Admin> list = this.getHibernateTemplate().find("from admin where adminname like '"+name+"'");
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		else{
			return null;
		}
	}
	@Resource(name = "sessionFactory")
    public void setSuperSessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
