package jxust.isp4nm.daoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.BasicDao;
import jxust.isp4nm.serviceImpl.ToolsService;
import jxust.isp4nm.vo.BaseDtoImpl;
import jxust.isp4nm.vo.CompanyDto;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class BasicDaoImpl implements BasicDao {
	protected HibernateTemplate ht;

	public HibernateTemplate getHt() {
		return ht;
	}

	@Resource(name = "hibernateTemplate")
	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	@SuppressWarnings("unchecked")
	public List<Object> find(BaseDtoImpl bd) {
		/*
		 * 实现对id的查询
		 */
		//判断cpDto中的idStr字段是否有值且非空
		if(bd.getIdStr()!=null&&!bd.getIdStr().equals("")){
			String idStr=bd.getIdStr();
			//初始化bd并设置idStr;
			bd=new CompanyDto();
			bd.setIdStr(idStr);
		}

		Object startObj = ToolsService.getFieldValue("start", bd);
		final int start = ToolsService.parseToInt(startObj);
		Object lengthObj = ToolsService.getFieldValue("length", bd);
		final int length = ToolsService.parseToInt(lengthObj);
		
		final String hql = this.getHql(bd);
		
		List<Object> objList = new ArrayList<Object>();
		objList = this.ht.executeFind(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				return session.createQuery(hql).setFirstResult(start)
						.setMaxResults(length).list();
			}
		});
		return objList;
	}

	public void delete(BaseDtoImpl bd) {
		this.ht.delete(bd.getEntity());
	}

	public void save(BaseDtoImpl bd) {
		this.ht.save(bd.getEntity());
	}

	public void update(BaseDtoImpl bd) {
		this.ht.update(bd.getEntity());
	}

	public String getHql(BaseDtoImpl bd) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getLength(String hqlString) {
		String str = "select count(*) ";
		str += hqlString;
		Session session = this.ht.getSessionFactory().openSession();
		Query q = session.createQuery(str);
		long length = (Long) q.uniqueResult();
		session.close();
		return (int) length;
	}

}
