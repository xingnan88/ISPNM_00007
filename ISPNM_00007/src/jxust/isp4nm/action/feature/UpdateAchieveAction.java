package jxust.isp4nm.action.feature;

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

@Component("updateAchieveAction")
@Scope("prototype")
public class UpdateAchieveAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private AchieveService achieveService;
	private Achieve achieve = new Achieve();

	public String execute() throws Exception {
		achieve.setAchieveId(Integer
				.parseInt(request.getParameter("achieveId")));
		achieve.setAchieveName(request.getParameter("achieveName"));
		achieve.setAuthor(request.getParameter("author"));
		String achieveType = "";
		String achieveTime = "";
		// String inputReprint = "";
		System.out.println("传入的值"+request.getParameter("achieveTyp"));//传入的值
		System.out.println("取得的值"+request.getParameter("achieveType"));//取得的值
		if ("003".equals(request.getParameter("achieveTyp").substring(0, 3))) {// 修改的是论文一类,论文类型处理不同
			String values[];
			values = request.getParameterValues("achieveType");
			if (values.length == 1) {
				achieveType = "00300" + values[0];
			}
			if (values.length == 2) {
				achieveType = "0030" + values[1] + values[0];
			}
			if (values.length == 3) {
				achieveType = "003" + values[2] + values[1] + values[0];
			}
			if (values.length == 4) {
				achieveType = "003" + values[3] + values[2] + values[1]
						+ values[0];
			}
			if (values.length == 5) {
				achieveType = "003" + values[4] + values[3] + values[2]
						+ values[1] + values[0];
			}
			achieve.setAchieveType(achieveType);
			achieveTime = request.getParameter("achieveTime");
			// achieveType = achieveType.substring(3);
			// achieveType = achieveType.replace("0", "");
			// achieveType = achieveType.replace("1", "EI、");
			// achieveType = achieveType.replace("2", "SCI、");
			// achieveType = achieveType.replace("3", "ISTP、");
			// achieveType = achieveType.replace("4", "中文摘要、");
			// achieveType = achieveType.replace("5", "一般论文、");
			// inputReprint = achieveType.substring(0, achieveType.length() -
			// 1);
		} else {
			String achieveTyp = request.getParameter("achieveTyp").substring(0, 3);
			
			if (!"--".equals(request.getParameter("staYear")) && request.getParameter("staYear") != null && !"".equals(request.getParameter("staYear"))) { // 某个时间
				if (!"--".equals(request.getParameter("staMonth")) && !"".equals(request.getParameter("staMonth"))) {
					achieveTime = request.getParameter("staYear") + "." + request.getParameter("staMonth");
				} 
				if ("--".equals(request.getParameter("staMonth")) || "".equals(request.getParameter("staMonth"))) {
					achieveTime = request.getParameter("staYear");
				}
				if (!"--".equals(request.getParameter("endYear")) && !"".equals(request.getParameter("endYear")) && request.getParameter("endYear") != null) {
					if (Integer.parseInt(request.getParameter("endYear")) < Integer.parseInt(request.getParameter("staYear"))) {
						String time_error = "time error";
						request.setAttribute("time_error", time_error);
						request.setAttribute("achieveType", request.getParameter("achieveType"));
						return "inputresearch";
					}
				}
				//判断是时间段还是时间
				if("002".equals(achieveTyp)) {
					achieveTime = request.getParameter("staYear") + "." + request.getParameter("staMonth") + "-" + request.getParameter("endYear") + "." + request.getParameter("endMonth");
				}
				else {
					achieveTime = request.getParameter("staYear") + "." + request.getParameter("staMonth");
				}
				
				achieveTime = achieveTime.replace("--", "");
				if(achieveTime.lastIndexOf(".") == achieveTime.length() - 1) {
					achieveTime = achieveTime.substring(0, achieveTime.length() - 1);
				}
				if(achieveTime.lastIndexOf("-") == achieveTime.length() - 1) {
					achieveTime = achieveTime.substring(0, achieveTime.length() - 1);
				}
				if(achieveTime.lastIndexOf(".") == achieveTime.length() - 1) {
					achieveTime = achieveTime.substring(0, achieveTime.length() - 1);
				}
			} else if (request.getParameter("achieveTime") != null) { // 手动填入时间
				achieveTime = request.getParameter("achieveTime");
			} else {
				String input_error = "input error";
				request.setAttribute("input_error", input_error);
				if ("001".equals(achieveTyp)) {
					return "inputaward";
				}
				if ("002".equals(achieveTyp)) {
					return "inputresearch";
				}
				if ("004".equals(achieveTyp)) {
					return "inputpatent";
				}
				if ("005".equals(achieveTyp)) {
					return "inputmaterial";
				}
				return "input";
			}
			achieve.setAchieveType(request.getParameter("achieveType"));
			if("004".equals(achieveTyp)) {
				achieve.setAchieveType("004000");
			}
			if("005".equals(achieveTyp)) {
				achieve.setAchieveType("005000");
			}
		}

		achieve.setAchieveTime(achieveTime);

		achieve.setAwardName(request.getParameter("awardName"));
		achieve.setAwardGrade(request.getParameter("awardGrade"));
		achieve.setUseUnit(request.getParameter("useUnit"));
		achieve.setSocialEconomyBenefit(request
				.getParameter("socialEconomyBenefit"));
		achieve.setPublishUnit(request.getParameter("publishUnit"));
		achieve.setPatentClass(request.getParameter("patentClass"));
		achieve.setApprovalUnit(request.getParameter("approvalUnit"));
		achieve.setCertNo(request.getParameter("certNo"));
		achieve.setProjectSource(request.getParameter("projectSource"));
		achieve.setAccountFund(request.getParameter("accountFund"));
		achieve.setPublication(request.getParameter("publication"));
		achieve.setInputReprint(request.getParameter("publication"));
		achieve.setCollegeType(request.getParameter("collegeType"));
		achieve.setChineseAbstract(request.getParameter("chineseAbstract"));
		achieve.setRemark(request.getParameter("remark"));
		request.setAttribute("achieveType", achieve.getAchieveType());
		this.achieveService.updateAchieve(achieve);
		return SUCCESS;
	}

	public Achieve getAchieve() {
		return achieve;
	}

	public void setAchieve(Achieve achieve) {
		this.achieve = achieve;
	}

	// request和response
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
}
