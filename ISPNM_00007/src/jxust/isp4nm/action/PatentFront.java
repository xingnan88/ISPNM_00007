package jxust.isp4nm.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.model.Patent;
import jxust.isp4nm.service.PageService;
import jxust.isp4nm.service.PatentService;
import jxust.isp4nm.util.CreateHql;
import jxust.isp4nm.vo.SearchInfo;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PatentFront extends ActionSupport implements ServletRequestAware, ServletResponseAware, ModelDriven{
	
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private Patent patent;
	private List<Patent> patents;
	private int id;
	private PageBean pageBean;//��ҳ
	private String page;
	private SearchInfo searchInfo;//����
	private String type;
	private String content;
	
	private PatentService ps;
	private PageService pageService;
	
	public String searchInput(){
		return INPUT;
	}
	
	public String list()
	{
		String hql = "from Patent";// ��ҳ
		String action = "front/patent/Patent_list";
		int pageSize = 25;
		this.setPageBean(pageService.queryForPage1(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String search()// �߼�����
	{
		String hql = CreateHql.getHql(searchInfo);// ��ҳ
		String action = "front/patent/Patent_search";
		session.setAttribute("hql", hql);
		int pageSize = 25;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String searchPage()// �߼�������һҳ
	{
		String hql = (String) session.getAttribute("hql");
		String action = "Patent_searchPage";
		int pageSize = 25;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));

		return SUCCESS;
	}
	
	public String simpleSearch()// ��������
	{
		String hql = "select p from Patent p where p." + CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		session.setAttribute("hql",hql);
		String action = "front/patent/Patent_simpleSearch?type=" + type + "&content=" + content;
		int pageSize = 25;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String nextsimpleSearch()// ����������һҳ
	{
		String hql = (String)session.getAttribute("hql");
		String action = "Patent_nextsimpleSearch";
		int pageSize = 25;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String tab() throws UnsupportedEncodingException//��ɫר��
	{
		if (content.equals(new String(content.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
			content = new String(content.getBytes("ISO-8859-1"), "GBK");
		}
		String hql = "select p from Patent p where p." + CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		session.setAttribute("hql", hql);
		String action = "front/patent/Patent_tab?content="+content + "&type=" + type;
		int pageSize = 25;
		this.setPageBean(pageService.queryForPageAA(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String nexttab()// ��ɫר����һҳ
	{
		String hql = (String) session.getAttribute("hql");
		String action = "Patent_nexttab";
		int pageSize = 25;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String read()
	{
		this.patent = this.ps.findById(id);
		return SUCCESS;
	}
	
	public Object getModel() {
		return searchInfo;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		this.session=this.request.getSession();
	}

	public Patent getPatent() {
		return patent;
	}

	public void setPatent(Patent patent) {
		this.patent = patent;
	}

	public List<Patent> getPatents() {
		return patents;
	}

	public void setPatents(List<Patent> patents) {
		this.patents = patents;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public PatentService getPs() {
		return ps;
	}

	@Resource(name="patentService")
	public void setPs(PatentService ps) {
		this.ps = ps;
	}

	public PageService getPageService() {
		return pageService;
	}
	
	@Resource(name="pageService")
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public SearchInfo getSearchInfo() {
		return searchInfo;
	}
	@Resource(name="searchInfo")
	public void setSearchInfo(SearchInfo searchInfo) {
		this.searchInfo = searchInfo;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}
	
}
