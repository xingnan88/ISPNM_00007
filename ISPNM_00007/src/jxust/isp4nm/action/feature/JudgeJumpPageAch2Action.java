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

@Component("judgeJumpPageAch2Action")
@Scope("prototype")
public class JudgeJumpPageAch2Action extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private PageBean pageBean;
	private String page;
	private PageService pageService;
	
	private String achieveName;

	@Resource
	private AchieveService achieveService;

	private List<Achieve> achieves;
	private Achieve achieve = new Achieve();

	public String list() throws Exception {
		page = request.getParameter("page");
		achieveName = request.getParameter("achieveName");
		if(achieveName == null) {
			achieveName = "";
		}
		else if(achieveName.equals(new String(achieveName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			achieveName = new String(achieveName.getBytes("ISO-8859-1"),"GBK");
		}
		String hql = "from achieve where achieveName like '%" + achieveName
					+ "%' order by achieveTime desc";
		String action = "JudgeJumpPageAch2!list.action?achieveName=" + achieveName;
		int pageSize = 5;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
				Integer.parseInt(page)));
		
		if(pageBean.getList().size() == 1) {//找到结果为1个值
			achieve = (Achieve)pageBean.getList().get(0);
			String collegeType = achieve.getCollegeType();
			request.setAttribute("collegeType", collegeType);
			
			String achieveTime = achieve.getAchieveTime();
			Matcher m = null;
			Pattern p = Pattern.compile("[-]");
			m = p.matcher(achieveTime);
			String staYear = "", staMonth = "", endYear = "", endMonth = "";
			if(m.find()) {
				String start = achieveTime.substring(0,achieveTime.indexOf("-"));
				p = Pattern.compile("[.]");
				m = p.matcher(start);
				if(m.find()) {
					staYear = start.substring(0,start.indexOf("."));
					staMonth = start.substring(start.indexOf(".") + 1);
				}else {
					staYear = start;
				}
				String end = achieveTime.substring(achieveTime.indexOf("-") + 1);
				p = Pattern.compile("[.]");
				m = p.matcher(end);
				if(m.find()) {
					endYear = end.substring(0,end.indexOf("."));
					endMonth = end.substring(end.indexOf(".") + 1);
				}else {
					endYear = end;
				}
			}
			else{
				p = Pattern.compile("[.]");
				m = p.matcher(achieveTime);
				if(m.find()) {
					staYear = achieveTime.substring(0,achieveTime.indexOf("."));
					staMonth = achieveTime.substring(achieveTime.indexOf(".") + 1);
				}else {
					staYear = achieveTime;
				}
			}
			request.setAttribute("staYear", staYear);
			request.setAttribute("staMonth", staMonth);
			request.setAttribute("endYear", endYear);
			request.setAttribute("endMonth", endMonth);
			
			String achieveType = achieve.getAchieveType();
			String achieveTyp = achieveType.substring(0,3);
			if(!"".equals(achieveTyp)) {
				request.setAttribute("achieveType", achieveType);
			}
			if("001".equals(achieveTyp)) {
				return "awardone";
			}
			if("002".equals(achieveTyp)) {
				return "researchone";
			}
			if("003".equals(achieveTyp)) {
				achieveType = achieveType.substring(3);
				achieveType = achieveType.replace("0", "");
				request.setAttribute("achieveType", achieveType);
				return "paperone";
			}
			if("004".equals(achieveTyp)) {
				return "patentone";
			}
			if("005".equals(achieveTyp)) {
				return "materialone";
			}
			return "one";
		} else if(pageBean.getList().size() <= 0) {
			String not_file = "搜索不到该文件!";
			request.setAttribute("not_file", not_file);
			return "input";
		} else {
			request.setAttribute("achieveName", achieveName);
			return "list";
		}
	}

	// achieveService
	public AchieveService getAchieveService() {
		return achieveService;
	}

	@Resource
	public void setAchieveService(AchieveService achieveService) {
		this.achieveService = achieveService;
	}

	// achieveList
	public List<Achieve> getAchieves() {
		return achieves;
	}

	public void setAchieves(List<Achieve> achieves) {
		this.achieves = achieves;
	}

	// request和response
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public Achieve getAchieve() {
		return achieve;
	}

	public void setAchieve(Achieve achieve) {
		this.achieve = achieve;
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

	public String getAchieveName() {
		return achieveName;
	}

	public void setAchieveName(String achieveName) {
		this.achieveName = achieveName;
	}
}
