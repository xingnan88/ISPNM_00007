package jxust.isp4nm.daoImpl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.EquipmentDao;
import jxust.isp4nm.model.Equipment;

@Component("equipmentDao")
@SuppressWarnings("unchecked")
public class EquipmentDaoImpl extends HibernateDaoSupport implements
		EquipmentDao {
	private Long count;
	private AnnotationSessionFactoryBean sessionFactory;

	public boolean add(Equipment equipment) {
		getHibernateTemplate().save(equipment);
		return true;
	}

	public boolean delete(Equipment equipment) {
		getHibernateTemplate().delete(equipment);
		return true;
	}
	
	public boolean deleteMore(List<Equipment> equipments){
		getHibernateTemplate().deleteAll(equipments);
		return true;
		
	}

	public List<Equipment> find(String category, String name, String model, String enterprise, String provenance, String info, String price, String price2, int page) {
		String hql = null;
		
		if("".equals(price) || price == null) {
			price = "0";
		}
		if("".equals(price2) || price2 == null) {
			price2 = "0";
		}
		if("请输入设备详情".equals(info)) {
			info = "";
		}
		if("0".equals(price) && "0".equals(price2)) {
			hql = " from Equipment eq where " +
						"eq.category like '%"+category+"%' " +
						"and eq.name like '%"+name+"%' " +
						"and eq.model like '%"+model+"%' " +
						"and eq.enterprise like '%"+enterprise+"%'"+
						"and eq.provenance like '%"+provenance+"%'"+
						"and eq.info like '%"+info+"%'";
		}else {
			hql = " from Equipment eq where " +
						"eq.category like '%"+category+"%' " +
						"and eq.name like '%"+name+"%' " +
						"and eq.model like '%"+model+"%' " +
						"and eq.enterprise like '%"+enterprise+"%'"+
						"and eq.provenance like '%"+provenance+"%'"+
						"and eq.info like '%"+info+"%'" + 
						"and eq.price between "+Integer.parseInt(price)+" and "+Integer.parseInt(price2);
		}
		
		return findPage(hql, page);
	}

	public List<Equipment> find(String category, int page) {
		
		return findPage(" from Equipment eq where eq.category = '" + category+"'",page);
	}

	public List<Equipment> findByCategory(String keyWord, int page) {
		return findPage(" from Equipment eq where eq.category like '%"+keyWord+"%' ",page);
	}

	public List<Equipment> findByEnterprise(String keyWord, int page) {
		return findPage(" from Equipment eq where eq.enterprise like '%"+keyWord+"%' ",page);
	}

	public List<Equipment> findByName(String keyWord, int page) {
		return findPage(" from Equipment eq where eq.name like '%"+keyWord+"%' ",page);
	}

	public List<Equipment> findPage(final String hql, final int page) {
		count = (Long) getHibernateTemplate().find("select count(*) "+hql).get(0); 
		 return getHibernateTemplate().execute(new HibernateCallback<List<Equipment>>() {

			public List<Equipment> doInHibernate(Session session) throws HibernateException,
					SQLException {
				return session.createQuery(hql).setFirstResult((page-1)*PAGING_SIZE).setMaxResults(PAGING_SIZE).list();
			}
		});
	}

	public Equipment get(int id) {
		return getHibernateTemplate().get(Equipment.class, id);
	}

	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	public void update(Equipment equipment) {
		getHibernateTemplate().update(equipment);
	}
	
	public long getCount(){
		return count;
	};
}
