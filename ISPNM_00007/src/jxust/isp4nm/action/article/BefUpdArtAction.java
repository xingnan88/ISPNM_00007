package jxust.isp4nm.action.article;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import jxust.isp4nm.model.Article;
import jxust.isp4nm.service.ArticleService;

import com.opensymphony.xwork2.ActionSupport;

@Component("befUpdArtAction")
@Scope("prototype")
public class BefUpdArtAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	@Resource
	private ArticleService articleService;
	
	Article article = new Article();

	@Override
	public String execute() throws Exception {
		int articleId = 0;
		if(request.getParameter("articleId") != null) {
			articleId = Integer.parseInt(request.getParameter("articleId"));
		}
		String hql0 = "from article where articleId=" + articleId;
		article = articleService.getArticleById(hql0);
		return SUCCESS;
	}

	public ArticleService getArticleService() {
		return articleService;
	}
	@Resource
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	//requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
}
