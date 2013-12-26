package jxust.isp4nm.action.article;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.service.ArticleService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("deleteArticleMoreAction")
@Scope("prototype")
public class DeleteArticleMoreAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private ArticleService articleService;
	private int[] checkedId;

	public int[] getCheckedId() {
		return checkedId;
	}
	public void setCheckedId(int[] checkedId) {
		this.checkedId = checkedId;
	}
	public ArticleService getArticleService() {
		return articleService;
	}
	@Resource
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	@Override
	public String execute() throws Exception {
		if(checkedId == null) {
			return "input";
		}
		articleService.deleteArticleMore(checkedId);
		return SUCCESS;
	}
	//requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
}
