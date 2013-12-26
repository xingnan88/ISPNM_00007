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

@Component("seniorSearchAchieveAction")
@Scope("prototype")
public class SeniorSearchAchieveAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private PageBean pageBean;
	private String page;
	private PageService pageService;

	private AchieveService achieveService;

	private List<Achieve> achieves;

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

	public String seniorSearch() throws Exception {
		String achieveTime = "";

		String achieveName = request.getParameter("achieveName");
		if(achieveName.equals(new String(achieveName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			achieveName = new String(achieveName.getBytes("ISO-8859-1"),"GBK");
		}
		String author = request.getParameter("author");
		if(author.equals(new String(author.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			author = new String(author.getBytes("ISO-8859-1"),"GBK");
		}
		String patentClass = request.getParameter("patentClass");
		if(patentClass.equals(new String(patentClass.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			patentClass = new String(patentClass.getBytes("ISO-8859-1"),"GBK");
		}
		String achieveType = request.getParameter("achieveType");
		String collegeType = request.getParameter("collegeType");

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
		if (sltMonth == null) {
			sltMonth = "--";
		}
		if (!"--".equals(sltYear) && sltYear != null) {
			if (!"--".equals(sltMonth)) {
				achieveTime = sltYear + "." + sltMonth;
			} else {
				achieveTime = sltYear;
			}
			// 按条件查询，拼sql语句（时间点查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != achieveTime && !"".equals(achieveTime)) {
				hql += " and ach.achieveTime like '" + achieveTime + "%'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearch.action?achieveName="
					+ achieveName
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
					+ "&patentClass="
					+ patentClass
					+ "&achieveType="
					+ achieveType
					+ "&collegeType="
					+ collegeType;
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
			// 按条件查询，拼sql语句（时间段查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != staYear && !"".equals(staYear) && !"--".equals(staYear)) {
				hql += " and ach.achieveTime >= '" + staYear + "'";
			}
			if (null != endYear && !"".equals(endYear) && !"--".equals(endYear)) {
				hql += " and ach.achieveTime <= '" + endYear + "'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearch.action?achieveName="
				+ achieveName
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
				+ "&patentClass="
				+ patentClass
				+ "&achieveType="
				+ achieveType
				+ "&collegeType="
				+ collegeType;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		} else {
			// 按条件查询，拼sql语句（时间点查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != achieveTime && !"".equals(achieveTime)) {
				hql += " and ach.achieveTime like '" + achieveTime + "%'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearch.action?achieveName="
				+ achieveName
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
				+ "&patentClass="
				+ patentClass
				+ "&achieveType="
				+ achieveType
				+ "&collegeType="
				+ collegeType;
			int pageSize = 5;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		}

		return "seniorSearch";
	}

	public String seniorSearchFore() throws Exception {
		String achieveTime = "";

		String achieveName = request.getParameter("achieveName");
		if(achieveName.equals(new String(achieveName.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			achieveName = new String(achieveName.getBytes("ISO-8859-1"),"GBK");
		}
		String author = request.getParameter("author");
		if(author.equals(new String(author.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			author = new String(author.getBytes("ISO-8859-1"),"GBK");
		}
		String patentClass = request.getParameter("patentClass");
		if(patentClass.equals(new String(patentClass.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			patentClass = new String(patentClass.getBytes("ISO-8859-1"),"GBK");
		}
		String achieveType = request.getParameter("achieveType");
		String collegeType = request.getParameter("collegeType");

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
		if (sltMonth == null) {
			sltMonth = "--";
		}
		if (!"--".equals(sltYear) && sltYear != null) {
			if (!"--".equals(sltMonth)) {
				achieveTime = sltYear + "." + sltMonth;
			} else {
				achieveTime = sltYear;
			}
			// 按条件查询，拼sql语句（时间点查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != achieveTime && !"".equals(achieveTime)) {
				hql += " and ach.achieveTime like '" + achieveTime + "%'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearchFore.action?achieveName="
				+ achieveName
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
				+ "&patentClass="
				+ patentClass
				+ "&achieveType="
				+ achieveType
				+ "&collegeType="
				+ collegeType;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));

		} else if (!"--".equals(staYear) || !"--".equals(endYear)) {
			if (!"--".equals(staYear) && !"--".equals(endYear)) {
				if (Integer.parseInt(staYear) > Integer.parseInt(endYear)) {
					String notCriter = "not criterion";
					request.setAttribute("notCriter", notCriter);
					return "inputFore";
				}
			}
			// 按条件查询，拼sql语句（时间段查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != staYear && !"".equals(staYear) && !"--".equals(staYear)) {
				hql += " and ach.achieveTime >= '" + staYear + "'";
			}
			if (null != endYear && !"".equals(endYear) && !"--".equals(endYear)) {
				hql += " and ach.achieveTime <= '" + endYear + "'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearchFore.action?achieveName="
				+ achieveName
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
				+ "&patentClass="
				+ patentClass
				+ "&achieveType="
				+ achieveType
				+ "&collegeType="
				+ collegeType;
			int pageSize = 28;
			this.setPageBean(pageService.queryForPageAA(hql, action, pageSize,
					Integer.parseInt(page)));
		} else {
			// 按条件查询，拼sql语句（时间点查询）
			String hql = "from achieve ach where 1=1";
			if (null != achieveName && !"".equals(achieveName)) {
				hql += " and ach.achieveName like '%" + achieveName + "%'";
			}
			if (null != author && !"".equals(author)) {
				hql += " and ach.author like '%" + author + "%'";
			}
			if (null != achieveTime && !"".equals(achieveTime)) {
				hql += " and ach.achieveTime like '" + achieveTime + "%'";
			}
			if (null != patentClass && !"".equals(patentClass)) {
				hql += " and ach.patentClass like '%" + patentClass + "%'";
			}
			if (null != achieveType && !"".equals(achieveType)
					&& !"000".equals(achieveType)) {
				hql += " and ach.achieveType like '" + achieveType + "%'";
			}
			if (null != collegeType && !"".equals(collegeType)
					&& !"0".equals(collegeType)) {
				hql += " and ach.collegeType=" + "'" + collegeType + "'";
			}
			String action = "SeniorSearchAchieve!seniorSearchFore.action?achieveName="
				+ achieveName
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
				+ "&patentClass="
				+ patentClass
				+ "&achieveType="
				+ achieveType
				+ "&collegeType="
				+ collegeType;
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
