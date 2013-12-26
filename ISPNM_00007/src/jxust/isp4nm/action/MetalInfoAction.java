package jxust.isp4nm.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxust.isp4nm.model.MetalInfo;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.MetalInfoService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class MetalInfoAction extends ActionSupport implements 
	ServletRequestAware,ServletResponseAware{
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private MetalInfoService metalInfoService;
	private List<MetalInfo> metalList;
	private MetalInfo metalInfo;
	private PageBean pageBean;
	private List<MetalInfo> list;
	
	

	public String SimpleSearch() {
		int metalNo=0;
		String para = request.getParameter("keyWord");
		metalInfo=metalInfoService.findByKeyword(para);	
		if (metalInfo!=null) {
			metalNo = metalInfo.getMetalNo();
		}
		
		request.setAttribute("metalNo",metalNo);
		return "SimpleSearch";
	}
	public String rightFore() {
		int metalNo=1;
		String para =request.getParameter("metalNo");
		Object para1=request.getAttribute("metalNo");
		if (para!=null) {
			metalNo=Integer.parseInt(para);
		}else {
			metalInfo=metalInfoService.MetalList().get(0);
			metalNo=metalInfo.getMetalNo();
		}
		if(para1!=null){
			metalNo=Integer.parseInt(para1.toString());
		}
		metalInfo = metalInfoService.findByid(metalNo);
		return "rightFore";
	}
	
	public String leftFore() {
		
		metalList =metalInfoService.MetalList();
		return "leftFore";
	}
	
	public MetalInfoService getMetalInfoService() {
		return metalInfoService;
	}
	@Resource(name="metalInfoService") 
	public void setMetalInfoService(MetalInfoService metalInfoService) {
		this.metalInfoService = metalInfoService;
	}
	public List<MetalInfo> getMetalList() {
		return metalList;
	}
	public void setMetalList(List<MetalInfo> metalList) {
		this.metalList = metalList;
	}
	public MetalInfo getMetalInfo() {
		return metalInfo;
	}
	public void setMetalInfo(MetalInfo metalInfo) {
		this.metalInfo = metalInfo;
	}
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		this.response=arg0;
		
	}
	
	public List<MetalInfo> getList() {
		return list;
	}

	public void setList(List<MetalInfo> list) {
		this.list = list;
	}
	
}
