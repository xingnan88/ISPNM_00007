package jxust.isp4nm.action.feature;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Achieve;
import jxust.isp4nm.service.AchieveService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("achieveDetailAction")
@Scope("prototype")
public class AchieveDetailAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private AchieveService achieveService;

	private List<Achieve> achieves = new ArrayList<Achieve>();
	private Achieve achieve = new Achieve();
	
	public Achieve getAchieve() {
		return achieve;
	}

	public void setAchieve(Achieve achieve) {
		this.achieve = achieve;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String detail() throws Exception {
		int achieveId = Integer.parseInt(request.getParameter("achieveId"));
		request.setAttribute("achieveId", achieveId);

		String hql0 = "from achieve ach where ach.achieveId=" + achieveId;
		achieve = achieveService.loadByAchieveId(hql0);
		
		String achieveType = achieve.getAchieveType();
		String achieveTyp = achieveType.substring(0,3);
		if("001".equals(achieveTyp)) {
			return "awardone";
		}
		if("002".equals(achieveTyp)) {
			return "researchone";
		}
		if("003".equals(achieveTyp)) {
			String achieveTypes = achieveType.substring(3);
			achieveTypes = achieveTypes.replace("0", "");
			if("".equals(achieveTypes)) {
				achieveTypes = "暂无论文类型";
			}
			else {
				achieveTypes = achieveTypes.replace("1", "EI、");
				achieveTypes = achieveTypes.replace("2", "SCI、");
				achieveTypes = achieveTypes.replace("3", "ISTP、");
				achieveTypes = achieveTypes.replace("4", "核心期刊、");
				achieveTypes = achieveTypes.replace("5", "一般论文、").trim();
				achieveTypes = achieveTypes.substring(0, achieveTypes.length() - 1);
			}
			request.setAttribute("achieveTypes", achieveTypes);
			return "paperone";
		}
		if("004".equals(achieveTyp)) {
			return "patentone";
		}
		if("005".equals(achieveTyp)) {
			return "materialone";
		}
		return "detail";
	}
	
	public String detailFore() throws Exception {
		int achieveId = 0;
		if(request.getParameter("achieveId") != null) {
			achieveId = Integer.parseInt(request.getParameter("achieveId"));
		}
		request.setAttribute("achieveId", achieveId);
		//修改浏览次数
		this.achieveService.updateBrowseTimes(achieveId);
		
		String hql0 = "from achieve ach where ach.achieveId=" + achieveId;
		achieve = achieveService.loadByAchieveId(hql0);
		
		String achieveType = achieve.getAchieveType();
		String achieveTyp = achieveType.substring(0,3);

		//得到上下篇
		int previousId = 0, nextId = 0;
		String previousName = "", nextName = "";
		//得到上一篇
		String hql = "from achieve where achieveId<"
					+ achieveId + " order by achieveId desc";
		Achieve previous = achieveService.queryPreviousAchieve(hql);
		//得到下一篇
		String hql2 = "from achieve where achieveId>"
					+ achieveId + " order by achieveId";
		Achieve next = achieveService.queryNextAchieve(hql2);
		
		if(previous != null) {
			previousId = previous.getAchieveId();
			previousName = previous.getAchieveName();
		}
		if(next != null) {
			nextId = next.getAchieveId();
			nextName = next.getAchieveName();
		}
		request.setAttribute("previousId", previousId);
		request.setAttribute("previousName", previousName);
		request.setAttribute("nextId", nextId);
		request.setAttribute("nextName", nextName);
		
		
		if("001".equals(achieveTyp)) {
			return "awarddetail";
		}
		if("002".equals(achieveTyp)) {
			return "researchdetail";
		}
		if("003".equals(achieveTyp)) {
			String achieveTypes = achieveType.substring(3);
			achieveTypes = achieveTypes.replace("0", "");
			if("".equals(achieveTypes)) {
				achieveTypes = "暂无论文类型";
			}
			else {
				achieveTypes = achieveTypes.replace("1", "EI、");
				achieveTypes = achieveTypes.replace("2", "SCI、");
				achieveTypes = achieveTypes.replace("3", "ISTP、");
				achieveTypes = achieveTypes.replace("4", "核心期刊、");
				achieveTypes = achieveTypes.replace("5", "一般论文、").trim();
				achieveTypes = achieveTypes.substring(0, achieveTypes.length() - 1);
			}
			request.setAttribute("achieveTypes", achieveTypes);
			return "paperdetail";
		}
		if("004".equals(achieveTyp)) {
			return "patentdetail";
		}
		if("005".equals(achieveTyp)) {
			return "materialdetail";
		}
		
		return "detailFore";
	}
	
	//request和response
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
}
