package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Article;

public interface ArticleDao {

	public Article getArticleById(final String hql) throws Exception;

	public void deleteArticle(int articleId) throws Exception;

	public boolean deleteArticleMore(List<Article> articles) throws Exception;

	public void save(Article article) throws Exception;

	public void updateArticle(Article article) throws Exception;

	public void updateBrowseTimes(int articleId) throws Exception;

	public Article queryPreviousArticle(final String hql) throws Exception;
	
	public Article queryNextArticle(final String hql) throws Exception;
}
