package jxust.isp4nm.action.article;

import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

@Component("updateArticleAction")
@Scope("prototype")
public class UpdateArticleAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private ArticleService articleService;
	private Article article = new Article();
	
	public String execute() throws Exception {
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		//修改成果
		String author = request.getParameter("author");
//		Pattern p0 = Pattern.compile("[,，、:]");
//		Matcher m0 = p0.matcher(author);
//		if(m0.find()) {
//			String illegalChar = "Illegal Char";
//			request.setAttribute("illegalChar", illegalChar);
//			return "input";
//		}
		Matcher m = null;
		Pattern p = Pattern.compile(" ");
		m = p.matcher(author);
		if(m.find()) {	//修改成果的人员为多个
			//判断人员是否重复
			String[] auth = author.split("\\s{1,}");
			Set<Object> tempSet = new HashSet<Object>();  
		    for (int i = 0; i < auth.length; i++) {  
		        tempSet.add(auth[i]);  
		    }
            if(auth.length != tempSet.size()) {
            	String authorRe = "author repeat";
				request.setAttribute("authorRe", authorRe);
				return INPUT;
            }
		}
		article.setArticleId(articleId);
		article.setArticleName(request.getParameter("articleName"));
		article.setAuthor(author);
		article.setAnnualVolume(request.getParameter("annualVolume"));
		article.setMechanism(request.getParameter("mechanism"));
		article.setKeyWord(request.getParameter("keyWord"));
		article.setChineseAbstract(request.getParameter("chineseAbstract"));
		article.setJournalName(request.getParameter("journalName"));
		article.setCn(request.getParameter("cn"));
		article.setIssn(request.getParameter("issn"));
		article.setClassId(request.getParameter("classId"));
		article.setClassCode(request.getParameter("classCode"));
		article.setFullArticle(request.getParameter("fullArticle"));
		articleService.updateArticle(article);
		return SUCCESS;
	}
	
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
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
}
