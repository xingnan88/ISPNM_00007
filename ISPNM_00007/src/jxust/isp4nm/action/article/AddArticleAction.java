package jxust.isp4nm.action.article;

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

@Component("addArticleAction")
@Scope("prototype")
public class AddArticleAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private ArticleService articleService;

	public String addArticle() throws Exception {

		Article art = new Article();
		
		art.setArticleName(request.getParameter("articleName"));
		art.setAuthor(request.getParameter("author"));

		String annualVolume = request.getParameter("annualVolume");
		if (annualVolume == null) {
			if (!"".equals(request.getParameter("sltYear"))) {
				String annualVolum = request.getParameter("sltYear") + "("
						+ request.getParameter("sltMonth") + ").-"
						+ request.getParameter("staPage") + "-"
						+ request.getParameter("endPage");
				art.setAnnualVolume(annualVolum);
			}
		}
		if (annualVolume != null) {
			art.setAnnualVolume(annualVolume);
		}

		art.setMechanism(request.getParameter("mechanism"));
		art.setKeyWord(request.getParameter("keyWord"));
		art.setChineseAbstract(request.getParameter("chineseAbstract"));
		art.setJournalName(request.getParameter("journalName"));
		art.setCn(request.getParameter("cn"));
		art.setIssn(request.getParameter("issn"));
		art.setClassId(request.getParameter("classId"));
		art.setClassCode(request.getParameter("classCode"));
		art.setFullArticle(request.getParameter("fullArticle"));
		this.articleService.add(art);

		return "addArticle";
	}

	public String execute() throws Exception {
		return SUCCESS;
	}

	// requestºÍresponse
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
}
