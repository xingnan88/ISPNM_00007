package jxust.isp4nm.action.feature;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import jxust.isp4nm.model.Achieve;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.AchieveService;
import jxust.isp4nm.service.PageService;

import com.opensymphony.xwork2.ActionSupport;

@Component("achieveAction")
@Scope("prototype")
public class AchieveListAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;

	private AchieveService achieveService;

	private List<Achieve> achieves;

	public String achievelist() throws Exception {
		String achieveType = request.getParameter("achieveType");
		String achieveName = request.getParameter("achieveName");
		System.out.println("achieveType:"+achieveType);
		if(achieveType != null) {
			if("003".equals(achieveType.substring(0,3))) {
				String achieveTyp = achieveType.substring(3);
				achieveTyp = achieveTyp.replace("0", "");
				
				String hql = "from achieve where achieveType like '003%"+ achieveType + "%'";
				String action = "AchieveList!achievelist.action?achieveType="+achieveType;
				int pageSize = 5;
				this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
						Integer.parseInt(page)));
			}
		}
		if(achieveName != null) {
			String hql = "from achieve where achieveName like '%" + achieveName
			+ "%' order by achieveTime desc";
			String action = "AchieveList!achievelist.action?achieveName="+achieveName;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		if(achieveType != null) {
			String hql = "from achieve where achieveType like '"+ achieveType + "%'";
			String action = "AchieveList!achievelist.action?achieveType="+achieveType;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		request.setAttribute("achieveType", achieveType);
		return "achievelist";
	}
	
	public String list() throws Exception {
		System.out.println("before:" + page);
		
		Matcher m = null;
		Pattern p = Pattern.compile("[,]");
		m = p.matcher(page);
		if(m.find()) {
			page = page.substring(0,page.indexOf(","));
		}
		
		String hql = "from achieve";
		String action = "AchieveList!list.action";
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		return "list";
	}
	
	public String achievelistFore() throws Exception {
		
		String achieveType = request.getParameter("achieveType");
		String achieveName = request.getParameter("achieveName");
		System.out.println("achieveType="+achieveType);
		if(achieveType != null) {
			if("003".equals(achieveType.substring(0,3))) {
				String achieveTyp = achieveType.substring(3);
				achieveTyp = achieveTyp.replace("0", "");
				
				String hql = "from achieve where achieveType like '003%"+ achieveTyp + "%'";
				String action = "AchieveList!achievelistFore.action?achieveType="+achieveType;
				int pageSize = 28;
				this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
						Integer.parseInt(page)));
			}
		}
		
		if(achieveName != null) {
			String hql = "from achieve where achieveName like '%" + achieveName
			+ "%' order by achieveTime desc";
			String action = "AchieveList!achievelistFore.action?achieveName="+achieveName;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		if(achieveType != null) {
			String hql = "from achieve where achieveType like '"+ achieveType + "%'";
			String action = "AchieveList!achievelistFore.action?achieveType="+achieveType;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}
		request.setAttribute("achieveType", achieveType);
		return "achievelistFore";
	}
	
	public String listFore() throws Exception {
		String hql = "from achieve";
		String action = "AchieveList!listFore.action";
		int pageSize = 28;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		return "listFore";
	}
	
	// requestºÍresponse
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

	public List<Achieve> getAchieves() {
		return achieves;
	}

	public void setAchieves(List<Achieve> achieves) {
		this.achieves = achieves;
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
