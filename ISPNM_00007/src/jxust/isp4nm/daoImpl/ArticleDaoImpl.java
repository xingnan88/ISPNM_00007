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

import jxust.isp4nm.dao.ArticleDao;
import jxust.isp4nm.model.Article;

@Component("articleDao")
public class ArticleDaoImpl extends HibernateDaoSupport implements ArticleDao {

	public Article getArticleById(final String hql) throws Exception {
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
			return (Article) list.get(0);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void deleteArticle(int articleId) throws Exception {
		try {
			Object article = getHibernateTemplate().load(Article.class,
					new Integer(articleId));
			getHibernateTemplate().delete(article);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public boolean deleteArticleMore(List<Article> articles)
			throws Exception {
		try {
			getHibernateTemplate().deleteAll(articles);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void save(Article article) throws Exception {
		try {
			getHibernateTemplate().save(article);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	public void updateArticle(Article article) throws Exception {
		try {
			getHibernateTemplate().update(article);
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public void updateBrowseTimes(int articleId) throws Exception {
		try {
			Session session = this.getSession();
			session.createQuery(
					"update article set browseTimes=browseTimes+1 where articleId="
							+ articleId).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		}
	}

	@Override
	public Article queryPreviousArticle(final String hql) throws Exception {
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
			return (Article)list.get(0);
		} catch(Exception e) {
			e.printStackTrace();
			throw(e);
		}
	}
	
	@Override
	public Article queryNextArticle(final String hql) throws Exception {
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
			return (Article)list.get(0);
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
