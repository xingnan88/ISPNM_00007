package jxust.isp4nm.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Expert;
import jxust.isp4nm.model.Patent;
import jxust.isp4nm.model.TechNews;
import jxust.isp4nm.service.ExpertService;
import jxust.isp4nm.service.PatentService;
import jxust.isp4nm.service.TechNewsService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	HttpServletResponse response;
	HttpServletRequest request;
	HttpSession session;
	
	private TechNewsService techNewsService;
	private PatentService patentService;
	private ExpertService expertService;

	
	public ExpertService getExpertService() {
		return expertService;
	}
	@Resource
	public void setExpertService(ExpertService expertService) {
		this.expertService = expertService;
	}
	public PatentService getPatentService() {
		return patentService;
	}
	@Resource
	public void setPatentService(PatentService patentService) {
		this.patentService = patentService;
	}
	public TechNewsService getTechNewsService() {
		return techNewsService;
	}
	@Resource
	public void setTechNewsService(TechNewsService techNewsService) {
		this.techNewsService = techNewsService;
	}
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		this.session=arg0.getSession();
	}
	public void setServletResponse(HttpServletResponse arg0) {
		this.response=arg0;
	}
	public String index(){
		
		List<TechNews> listNews=techNewsService.listNew("", "");
		request.setAttribute("listNews", listNews);
		
		String[] BigCates={"采矿工程","安全与环境","矿物加工工程","冶金工程","材料工程","矿冶设备工程"};
		String[] smallCates={"行业动态","新技术、新工艺"};
		List<TechNews> list_1_1=techNewsService.listNew("采矿工程", "行业动态");
		List<TechNews> list_1_2=techNewsService.listNew("采矿工程", "新技术、新工艺");
		List<Patent> list_1_3=patentService.listNewPatents("采矿工程");
		List<Expert> list_1_4=expertService.listNewExpert("采矿工程");
		
		List<TechNews> list_2_1=techNewsService.listNew(BigCates[1], smallCates[0]);
		List<TechNews> list_2_2=techNewsService.listNew(BigCates[1], smallCates[1]);
		List<Patent> list_2_3=patentService.listNewPatents(BigCates[1]);
		List<Expert> list_2_4=expertService.listNewExpert(BigCates[1]);
		
		List<TechNews> list_3_1=techNewsService.listNew(BigCates[2], smallCates[0]);
		List<TechNews> list_3_2=techNewsService.listNew(BigCates[2], smallCates[1]);
		List<Patent> list_3_3=patentService.listNewPatents(BigCates[2]);
		List<Expert> list_3_4=expertService.listNewExpert(BigCates[2]);
		
		List<TechNews> list_4_1=techNewsService.listNew(BigCates[3], smallCates[0]);
		List<TechNews> list_4_2=techNewsService.listNew(BigCates[3], smallCates[1]);
		List<Patent> list_4_3=patentService.listNewPatents(BigCates[3]);
		List<Expert> list_4_4=expertService.listNewExpert(BigCates[3]);
		
		List<TechNews> list_5_1=techNewsService.listNew(BigCates[4], smallCates[0]);
		List<TechNews> list_5_2=techNewsService.listNew(BigCates[4], smallCates[1]);
		List<Patent> list_5_3=patentService.listNewPatents(BigCates[4]);
		List<Expert> list_5_4=expertService.listNewExpert(BigCates[4]);
		
		List<TechNews> list_6_1=techNewsService.listNew(BigCates[5], smallCates[0]);
		List<TechNews> list_6_2=techNewsService.listNew(BigCates[5], smallCates[1]);
		List<Patent> list_6_3=patentService.listNewPatents(BigCates[5]);
		List<Expert> list_6_4=expertService.listNewExpert(BigCates[5]);
		
		request.setAttribute("list_1_1", list_1_1);
		request.setAttribute("list_1_2", list_1_2);
		request.setAttribute("list_1_3", list_1_3);
		request.setAttribute("list_1_4", list_1_4);
		
		request.setAttribute("list_2_1", list_2_1);
		request.setAttribute("list_2_2", list_2_2);
		request.setAttribute("list_2_3", list_2_3);
		request.setAttribute("list_2_4", list_2_4);
		
		request.setAttribute("list_3_1", list_3_1);
		request.setAttribute("list_3_2", list_3_2);
		request.setAttribute("list_3_3", list_3_3);
		request.setAttribute("list_3_4", list_3_4);
		
		request.setAttribute("list_4_1", list_4_1);
		request.setAttribute("list_4_2", list_4_2);
		request.setAttribute("list_4_3", list_4_3);
		request.setAttribute("list_4_4", list_4_4);
		
		request.setAttribute("list_5_1", list_5_1);
		request.setAttribute("list_5_2", list_5_2);
		request.setAttribute("list_5_3", list_5_3);
		request.setAttribute("list_5_4", list_5_4);
		
		request.setAttribute("list_6_1", list_6_1);
		request.setAttribute("list_6_2", list_6_2);
		request.setAttribute("list_6_3", list_6_3);
		request.setAttribute("list_6_4", list_6_4);
		
		
		return SUCCESS;
	}
	@Test
	public void Test(){
		ApplicationContext ctxApplicationContext=new ClassPathXmlApplicationContext("applicationContext-hibernate.xml");
		expertService=(ExpertService)ctxApplicationContext.getBean("expertService");
		String bigCategory="采矿工程";
		List<Expert> list=expertService.listNewExpert(bigCategory);
		System.out.println(list.size());
		/*patentService=(PatentService)ctxApplicationContext.getBean("patentService");
		List<Patent> list=patentService.listNewPatents("采矿加工");
		System.out.println(list.size());*/
		
	}
	

}
