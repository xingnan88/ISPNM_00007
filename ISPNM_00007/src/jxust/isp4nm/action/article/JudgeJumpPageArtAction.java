package jxust.isp4nm.action.article;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import jxust.isp4nm.model.Article;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.ArticleService;
import jxust.isp4nm.service.PageService;

import com.opensymphony.xwork2.ActionSupport;

@Component("judgeJumpPageArtAction")
@Scope("prototype")
public class JudgeJumpPageArtAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;
	
	private String articleName;

	@Resource
	private ArticleService articleService;

	private List<Article> articles;

	private Article article = new Article();

	public String jjpa() throws Exception {
		page = request.getParameter("page");
		articleName = request.getParameter("articleName");
		if(articleName == null) {
			articleName = "";
		}
		else if(articleName.equals(new String(articleName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			articleName = new String(articleName.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from article where articleName like '%" + articleName
					+ "%' or keyWord like '%" + articleName + "%'";
		String action = "JudgeJumpPageArt!jjpa.action?articleName=" + articleName;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		if(pageBean.getList().size() == 1) {
			article = (Article)pageBean.getList().get(0);
			return "searchone";
		} else if(pageBean.getList().size() <= 0) {
			String not_file = "搜索不到该文件!";
			request.setAttribute("not_file", not_file);
			return "input";
		} else {
			request.setAttribute("articleName", articleName);
			return "list";
		}
	}
	
	public String jjpa2() throws Exception {
		page = request.getParameter("page");
		articleName = request.getParameter("articleName");
		if(articleName == null) {
			articleName = "";
		}
		else if(articleName.equals(new String(articleName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			articleName = new String(articleName.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from article where articleName like '%" + articleName
					+ "%' or keyWord like '%" + articleName + "%'";
		String action = "JudgeJumpPageArt!jjpa2.action?articleName=" + articleName;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		if(pageBean.getList().size() == 1) {
			article = (Article)pageBean.getList().get(0);
			return "updateone";
		} else if(pageBean.getList().size() <= 0) {
			String not_file = "搜索不到该文件!";
			request.setAttribute("not_file", not_file);
			return "input";
		} else {
			request.setAttribute("articleName", articleName);
			return "list";
		}
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

	// request和response
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

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public PageService getPageService() {
		return pageService;
	}
	@Resource(name = "pageService")
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public String getArticleName() {
		return articleName;
	}

	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
}
