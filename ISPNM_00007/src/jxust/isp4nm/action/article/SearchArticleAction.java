package jxust.isp4nm.action.article;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Article;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.ArticleService;
import jxust.isp4nm.service.PageService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("searchArticleAction")
@Scope("prototype")
public class SearchArticleAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;
	
	private ArticleService articleService;
	
	private List<Article> articles;
	
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String searchArticle() throws Exception {
		page = request.getParameter("page");
		if(page == null || "".equals(page)) {
			page = "1";
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord == null) {
			keyWord = "";
		}
		else if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from article where articleName like '%" + keyWord
					+ "%' or keyWord like '%" + keyWord + "%'";
		String action = "ArticleList!list.action?keyWord="+keyWord;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
			Integer.parseInt(page)));
		
		request.setAttribute("keyWord", keyWord);
		return "searchArticle";
	}
	
	public String searchArticleFore() throws Exception {
		page = request.getParameter("page");
		if(page == null || "".equals(page)) {
			page = "1";
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord == null) {
			keyWord = "";
		}
		else if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from article where articleName like '%" + keyWord
					+ "%' or keyWord like '%" + keyWord + "%'";
		String action = "ArticleList!listFore.action?keyWord="+keyWord;
		int pageSize = 28;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
			Integer.parseInt(page)));
		
		request.setAttribute("keyWord", keyWord);
		return "searchArticleFore";
	}
	
	//requestºÍresponse
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
}
