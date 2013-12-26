package jxust.isp4nm.service;

import jxust.isp4nm.model.Article;

public interface ArticleService {

	public Article getArticleById(final String hql) throws Exception;
	
	public void deleteArticle(int articleId) throws Exception;
	
	public boolean deleteArticleMore(int[] checkedId) throws Exception;
	
	public abstract void add(Article article) throws Exception;

	public void updateArticle(Article article) throws Exception;
	
	public void updateBrowseTimes(int articleId) throws Exception;
	
	public Article queryPreviousArticle(final String hql) throws Exception;

	public Article queryNextArticle(final String hql) throws Exception;
}

