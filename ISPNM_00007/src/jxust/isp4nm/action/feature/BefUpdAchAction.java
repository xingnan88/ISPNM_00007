package jxust.isp4nm.action.feature;

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
import jxust.isp4nm.service.AchieveService;

import com.opensymphony.xwork2.ActionSupport;

@Component("befUpdAchAction")
@Scope("prototype")
public class BefUpdAchAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	@Resource
	private AchieveService achieveService;
	
	Achieve achieve = new Achieve();

	@Override
	public String execute() throws Exception {
		int achieveId = 0;
		if(request.getParameter("achieveId") != null) {
			achieveId = Integer.parseInt(request.getParameter("achieveId"));
		}
		String achieveType = request.getParameter("achieveType");
		String achieveTyp = achieveType.substring(0,3);
		if(!"003".equals(achieveTyp)) {
			request.setAttribute("achieveType", achieveType);
		}
		
		String hql0 = "from achieve ach where ach.achieveId=" + achieveId;
		achieve = achieveService.loadByAchieveId(hql0);
		
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
		return SUCCESS;
	}
	//achieveService
	public AchieveService getAchieveService() {
		return achieveService;
	}
	@Resource
	public void setAchieveService(AchieveService achieveService) {
		this.achieveService = achieveService;
	}
	//requestºÍresponse
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
}
