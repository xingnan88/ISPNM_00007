package jxust.isp4nm.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.MetalInfoDao;
import jxust.isp4nm.model.Admin;
import jxust.isp4nm.model.MetalInfo;

@Component("metalInfoDao")
public class MetalInfoDaoImpl extends HibernateDaoSupport implements MetalInfoDao {
	@Override
	public List<MetalInfo> MetalList() {
		String hql= "from metalInfo";
		List<MetalInfo> metalList =(List<MetalInfo>)this.getHibernateTemplate().find(hql);                                       
		return metalList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public MetalInfo findByid(int metalNo) {
		return (MetalInfo)this.getHibernateTemplate().get(MetalInfo.class,metalNo);
	}

	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public MetalInfo findByKeyword(String keyWord) {
		int key;
		try {
			key=Integer.parseInt(keyWord);
		} catch (Exception e) {
			key=0;
		}
		String hql="from metalInfo info where info.metalName='"+keyWord+"' or info.metalNo='"+key+"' or info.metalSymbol='"+keyWord+"'";
		List<MetalInfo> list=(List<MetalInfo>)this.getHibernateTemplate().find(hql);
		if (list!=null&&list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
	}
}
