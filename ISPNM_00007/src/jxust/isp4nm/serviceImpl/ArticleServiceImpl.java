package jxust.isp4nm.serviceImpl;

import java.util.LinkedList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.ArticleDao;
import jxust.isp4nm.model.Article;
import jxust.isp4nm.service.ArticleService;

@Component("articleService")
public class ArticleServiceImpl implements ArticleService {

	private ArticleDao articleDao;

	public ArticleDao getArticleDao() {
		return articleDao;
	}

	@Resource
	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	public Article getArticleById(final String hql) throws Exception {
		return this.articleDao.getArticleById(hql);
	}

	public void deleteArticle(int articleId) throws Exception {
		this.articleDao.deleteArticle(articleId);
	}

	public boolean deleteArticleMore(int[] checkedId) throws Exception {
		LinkedList<Article> articles = new LinkedList<Article>();
		Article article;
		for (int i = 0; i < checkedId.length; i++) {
			System.out.println(checkedId[i] + "	");
			article = new Article();
			article.setArticleId(checkedId[i]);
			articles.add(article);
		}
		articleDao.deleteArticleMore(articles);
		return true;
	}

	public void add(Article article) throws Exception {
		articleDao.save(article);
	}

	public void updateArticle(Article article) throws Exception {
		this.articleDao.updateArticle(article);
	}

	public void updateBrowseTimes(int articleId) throws Exception {
		this.articleDao.updateBrowseTimes(articleId);
	}

	public Article queryPreviousArticle(final String hql) throws Exception {
		return articleDao.queryPreviousArticle(hql);
	}
	
	public Article queryNextArticle(final String hql) throws Exception {
		return articleDao.queryNextArticle(hql);
	}
}
