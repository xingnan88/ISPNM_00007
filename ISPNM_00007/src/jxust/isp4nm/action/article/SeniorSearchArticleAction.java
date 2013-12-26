package jxust.isp4nm.action.article;

import java.util.ArrayList;
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

@Component("seniorSearchArticleAction")
@Scope("prototype")
public class SeniorSearchArticleAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;

	private ArticleService articleService;

	private List<Article> articles = new ArrayList<Article>();

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

	public String seniorSearch() throws Exception {
		String annualVolume = "";
		String articleName = request.getParameter("articleName");
		if(articleName.equals(new String(articleName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			articleName = new String(articleName.getBytes("ISO-8859-1"),"GBK");
		}
		String author = request.getParameter("author");
		if(author.equals(new String(author.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			author = new String(author.getBytes("ISO-8859-1"),"GBK");
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String cn = request.getParameter("cn");
		String issn = request.getParameter("issn");
		String classId = request.getParameter("classId");

		String sltYear = request.getParameter("sltYear");
		String sltMonth = request.getParameter("sltMonth");//期刊号

		String staYear = request.getParameter("staYear");
		String endYear = request.getParameter("endYear");

		if (staYear == null) {
			staYear = "--";
		}
		if (endYear == null) {
			endYear = "--";
		}
		if (sltYear == null) {
			sltYear = "--";
		}
		if ("".equals(sltMonth)) {
			sltMonth = "--";
		}
		if (!"--".equals(sltYear) && sltYear != null) {
			if (!"--".equals(sltMonth)) {
				annualVolume = sltYear + "(" + sltMonth + ")";
			} else {
				annualVolume = sltYear;
			}
			//按条件查询，拼sql语句（时间点查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != annualVolume && !"".equals(annualVolume)) {
				hql += " and art.annualVolume like '" + annualVolume
						+ "%'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearch.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
			
		} else if (!"--".equals(staYear) || !"--".equals(endYear)) {
			if (!"--".equals(staYear) && !"--".equals(endYear)) {
				if (Integer.parseInt(staYear) > Integer.parseInt(endYear)) {
					String notCriter = "not criterion";
					request.setAttribute("notCriter", notCriter);
					return "input";
				}
			}
			//按条件查询，拼sql语句（时间段查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != staYear && !"".equals(staYear) && !"--".equals(staYear)) {
				hql += " and ach.annualVolume >= '" + staYear + "'";
			}
			if (null != endYear && !"".equals(endYear) && !"--".equals(endYear)) {
				hql += " and ach.annualVolume <= '" + endYear + "'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearch.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		} else {
			//按条件查询，拼sql语句（时间点查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != annualVolume && !"".equals(annualVolume)) {
				hql += " and art.annualVolume like '" + annualVolume
						+ "%'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearch.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}

		return "seniorSearch";
	}

	public String seniorSearchFore() throws Exception {
		String annualVolume = "";
		String articleName = request.getParameter("articleName");
		if(articleName.equals(new String(articleName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			articleName = new String(articleName.getBytes("ISO-8859-1"),"GBK");
		}
		String author = request.getParameter("author");
		if(author.equals(new String(author.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			author = new String(author.getBytes("ISO-8859-1"),"GBK");
		}
		String keyWord = request.getParameter("keyWord");
		if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		String cn = request.getParameter("cn");
		String issn = request.getParameter("issn");
		String classId = request.getParameter("classId");
		
		String sltYear = request.getParameter("sltYear");
		String sltMonth = request.getParameter("sltMonth");

		String staYear = request.getParameter("staYear");
		String endYear = request.getParameter("endYear");

		if (staYear == null) {
			staYear = "--";
		}
		if (endYear == null) {
			endYear = "--";
		}
		if (sltYear == null) {
			sltYear = "--";
		}
		if ("".equals(sltMonth)) {
			sltMonth = "--";
		}
		if (!"--".equals(sltYear) && sltYear != null) {
			if (!"--".equals(sltMonth)) {
				annualVolume = sltYear + "(" + sltMonth + ")";
			} else {
				annualVolume = sltYear;
			}
			//按条件查询，拼sql语句（时间点查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != annualVolume && !"".equals(annualVolume)) {
				hql += " and art.annualVolume like '" + annualVolume
						+ "%'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearchFore.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
			
		} else if (!"--".equals(staYear) || !"--".equals(endYear)) {
			if (!"--".equals(staYear) && !"--".equals(endYear)) {
				if (Integer.parseInt(staYear) > Integer.parseInt(endYear)) {
					String notCriter = "not criterion";
					request.setAttribute("notCriter", notCriter);
					return "input";
				}
			}
			//按条件查询，拼sql语句（时间段查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != staYear && !"".equals(staYear) && !"--".equals(staYear)) {
				hql += " and ach.annualVolume >= '" + staYear + "'";
			}
			if (null != endYear && !"".equals(endYear) && !"--".equals(endYear)) {
				hql += " and ach.annualVolume <= '" + endYear + "'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearchFore.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		} else {
			//按条件查询，拼sql语句（时间点查询）
			String hql = "from article art where 1=1";
			if (null != articleName && !"".equals(articleName)) {
				hql += " and art.articleName like '%" + articleName
						+ "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and art.author like '%" + author + "%'";
			}
			if (null != annualVolume && !"".equals(annualVolume)) {
				hql += " and art.annualVolume like '" + annualVolume
						+ "%'";
			}
			if (null != keyWord && !"".equals(keyWord)) {
				hql += " and art.keyWord like '%" + keyWord + "%'";
			}
			if (null != cn && !"".equals(cn)) {
				hql += " and art.cn = '" + cn + "'";
			}
			if (null != issn && !"".equals(issn)) {
				hql += " and art.issn = '" + issn + "'";
			}
			if (null != classId && !"".equals(classId)) {
				hql += " and art.classId like '" + classId + "%'";
			}
			String action = "SeniorSearchArticle!seniorSearchFore.action?articleName="
				+ articleName
				+ "&author="
				+ author
				+ "&sltYear="
				+ sltYear
				+ "&sltMonth="
				+ sltMonth
				+ "&staYear="
				+ staYear
				+ "&endYear="
				+ endYear
				+ "&keyWord="
				+ keyWord
				+ "&cn="
				+ cn
				+ "&issn="
				+ issn
				+ "&classId="
				+ classId;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}

		return "seniorSearchFore";
	}

	// request和response
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
