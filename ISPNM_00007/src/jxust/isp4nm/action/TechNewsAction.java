package jxust.isp4nm.action;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.model.TechNews;
import jxust.isp4nm.service.PageService;
import jxust.isp4nm.service.TechNewsService;
import jxust.isp4nm.util.Upload;
import jxust.isp4nm.vo.SearchInfo;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class TechNewsAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private TechNews techNews;
	private List<TechNews> technews;
	private int id;
	private PageBean pageBean;
	private String page;
	private File picture; // 上传的图片
	private String pictureFileName;
	private String pictureContentType;
	private int[] chkSon;// 全选

	private SearchInfo searchInfo = new SearchInfo();// 搜索
	private TechNewsService techNewsService;
	private PageService pageService;

	private String content;

	@Override
	public String execute() throws Exception {
		return "success";
	}

	public String list() {
		String hql = "from TechNews";// 分页
		String action = "admin/TechNews_list";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize,
				Integer.parseInt(page)));
		return SUCCESS;
	}

	public String listnews() {
		String hql = "from TechNews";// 分页
		String action = "admin/TechNews_list";
		int pageSize = 25;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize,
				Integer.parseInt(page)));
		return SUCCESS;
	}
	

	public String add() throws IOException, ParseException {
		String path = Upload.getWebPath() + "upload/";
		if (pictureFileName != null && picture != null) {
			Upload.doUpload(pictureFileName, picture);
			techNews.setNewspicture(path + pictureFileName);
			System.out.print(path + pictureFileName);
			techNews.setIsimg("Yes");

		} else {
			techNews.setIsimg("No");
		}

		String newstitle = techNews.getNewstitle();
		System.out.print(newstitle);
	
		Date newstime = new java.util.Date();

		techNews.setNewstime(newstime);
		techNewsService.add(techNews);

		return SUCCESS;
	}
	
	public String tab() throws UnsupportedEncodingException//特色专利
	{   
		String hql = "select t from TechNews t where t.bigclassname like '%" + content + "%'";
		session.setAttribute("hql", hql);
		String action = "front/technews/TechNews_nexttab";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage1(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String nexttab()// 特色专利下一页
	{
		String hql = (String) session.getAttribute("hql");
		String action = "front/technews/TechNews_nexttab";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage1(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	public String update()// 更新
	{
		techNewsService.update(techNews);
		return SUCCESS;
	}

	public String delete()// 删除
	{
		techNewsService.delete(id);
		return SUCCESS;
	}

	public String deleteSelect()// 删除选中的新闻
	{
		if (chkSon != null) {
			this.techNewsService.deleteSelect(chkSon);
		}
		return SUCCESS;
	}

	public String addInput()// 添加输入数据
	{
		return INPUT;
	}

	public String updateInput()// 更新输入数据
	{
		this.techNews = this.techNewsService.findById(id);
		return INPUT;
	}

	public String searchInput()// 搜索输入数据
	{
		return INPUT;
	}

	public String search()// 高级搜索
	{
		String news = request.getParameter("news");
		System.out.println(news);
		String starttime = request.getParameter("techNews.starttime");

		System.out.println(starttime);
		String endtime = request.getParameter("techNews.endtime");
		System.out.println(endtime);
		// String hql = CreateHql.getHql(searchInfo);// 分页
		String hql = "select t from TechNews t where t.newstitle like '%"
				+ news + "%' and t.newstime between '" + starttime + "' and '" + endtime +"'";

		String action = "admin/TechNews_searchPage";
		session.setAttribute("hql", hql);
		int pageSize = 10;
		System.out.println(hql);

		this.setPageBean(pageService.queryForPage(hql, action, pageSize,
				Integer.parseInt(page)));
		return SUCCESS;
	}

	public String searchPage()// 高级搜索下一页
	{
		String hql = (String) session.getAttribute("hql");
		String action = "admin/TechNews_searchPage";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize,
				Integer.parseInt(page)));

		return SUCCESS;
	}

	/*
	 * public String read()// 阅读新闻 { this.techNews =
	 * this.techNewsService.findById(id); return SUCCESS; }
	 */
	public String show() {
		this.techNewsService.updateBrowseTimes(id);
		
		this.techNews = this.techNewsService.findById(id);
		return SUCCESS;
	}

	public String deleterSelect()// 删除选中的新闻
	{
		if (chkSon != null) {
			this.techNewsService.deleteSelect(chkSon);
		}
		return SUCCESS;
	}

	public String simpleSearch()// 快速搜索
	{
		String hql = "select t from TechNews t where t.newstitle like '%"
				+ content + "%'";
		// String hql = "select p from Patent p where p." +
		// CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		String action = "admin/TechNews_simpleSearch";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize,
				Integer.parseInt(page)));
		return SUCCESS;
	}

	/*
	 * public String ckUpload() { imageFileName = new Date().getTime() +
	 * myFileFileName; // 此名称用当前时间与上传图片名组成 imagePath =
	 * ServletActionContext.getServletContext
	 * ().getRealPath("ckeditor/images/Image") + "\\" + imageFileName;
	 * System.out.println(imagePath); pagePath = Upload.getWebPath() +
	 * "ckeditor/images/Image" + "\\" + imageFileName; // 页面引用位置
	 * System.out.println(pagePath); File imageFile = new File(imagePath);
	 * Upload.copy(myFile, imageFile); return SUCCESS; }
	 */

	public TechNews getTechNews() {
		return techNews;
	}

	public void setTechNews(TechNews techNews) {
		this.techNews = techNews;
	}

	public void setTechnews(List<TechNews> technews) {
		this.technews = technews;
	}

	public List<TechNews> getTechnews() {
		return technews;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPage() {
		return page;
	}

	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		this.session = this.request.getSession();

	}

	public void setServletResponse(HttpServletResponse arg0) {
		this.response = arg0;

	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public int[] getChkSon() {
		return chkSon;
	}

	public void setChkSon(int[] chkSon) {
		this.chkSon = chkSon;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public TechNewsService getTechNewsService() {
		return techNewsService;
	}

	@Resource(name = "techNewsService")
	public void setTechNewsService(TechNewsService techNewsService) {
		this.techNewsService = techNewsService;
	}

	public PageService getPageService() {
		return pageService;
	}

	@Resource(name = "pageService")
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
