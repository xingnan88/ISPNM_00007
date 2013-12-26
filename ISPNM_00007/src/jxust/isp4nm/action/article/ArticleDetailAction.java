package jxust.isp4nm.action.article;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Article;
import jxust.isp4nm.service.ArticleService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("articleDetailAction")
@Scope("prototype")
public class ArticleDetailAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private ArticleService articleService;

	private Article article = new Article();
	private List<Article> articles = new ArrayList<Article>();
	
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String detail() throws Exception {
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		request.setAttribute("articleId", articleId);
		String hql0 = "from article where articleId=" + articleId;
		article = articleService.getArticleById(hql0);
		return "detail";
	}
	
	public String detailFore() throws Exception {
		int articleId = 0;
		if(request.getParameter("articleId") != null) {
			articleId = Integer.parseInt(request.getParameter("articleId"));
		}
		request.setAttribute("articleId", articleId);
		//修改浏览次数
		this.articleService.updateBrowseTimes(articleId);
		
		String hql0 = "from article where articleId=" + articleId;
		article = articleService.getArticleById(hql0);
		if(article == null) {
			String not_file = "not the file";
			request.setAttribute("not_file", not_file);
			return "input";
		}
		//得到上下篇
		int previousId = 0, nextId = 0;
		String previousName = "", nextName = "";
		//得到上一篇
		String hql = "from article where articleId<"
					+ articleId + " order by articleId desc";
		Article previous = articleService.queryPreviousArticle(hql);
		//得到下一篇
		String hql2 = "from article where articleId>"
					+ articleId + " order by articleId";
		Article next = articleService.queryNextArticle(hql2);
		
		if(previous != null) {
			previousId = previous.getArticleId();
			previousName = previous.getArticleName();
		}
		if(next != null) {
			nextId = next.getArticleId();
			nextName = next.getArticleName();
		}
		
		request.setAttribute("previousId", previousId);
		request.setAttribute("previousName", previousName);
		request.setAttribute("nextId", nextId);
		request.setAttribute("nextName", nextName);
		
		return "detailFore";
	}
	
	//request和response
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public ArticleService getArticleService() {
		return articleService;
	}
	@Resource
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
}
