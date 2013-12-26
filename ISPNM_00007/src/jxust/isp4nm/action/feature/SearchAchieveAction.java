package jxust.isp4nm.action.feature;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Achieve;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.AchieveService;
import jxust.isp4nm.service.PageService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("searchAchieveAction")
@Scope("prototype")
public class SearchAchieveAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;
	
	private AchieveService achieveService;
	
	private List<Achieve> achieves;
	
	private String keyWord;
	
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public List<Achieve> getAchieves() {
		return achieves;
	}
	public void setAchieves(List<Achieve> achieves) {
		this.achieves = achieves;
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String searchAchieve() throws Exception {
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
		
		String hql = "from achieve where achieveName like '%" + keyWord
					+ "%' order by achieveTime desc";
		
		String action = "SearchAchieve!searchAchieve.action?keyWord=" + keyWord;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));

		request.setAttribute("achieveName", keyWord);
		return "searchAchieve";
	}
	
	public String searchAchieveFore() throws Exception {
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
		
		String hql = "from achieve where achieveName like '%" + keyWord
					+ "%' order by achieveTime desc";
		
		String action = "SearchAchieve!searchAchieveFore.action?keyWord=" + keyWord;
		int pageSize = 28;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		request.setAttribute("achieveName", keyWord);
		return "searchAchieveFore";
	}
	
	//requestºÍresponse
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public AchieveService getAchieveService() {
		return achieveService;
	}
	@Resource
	public void setAchieveService(AchieveService achieveService) {
		this.achieveService = achieveService;
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
