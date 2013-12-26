package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.PageDao;
import jxust.isp4nm.model.PageBean;
import jxust.isp4nm.service.PageService;

@Component(value="pageService")
public class PageServiceImpl implements PageService
{
	private PageDao pageDAO;

	public PageDao getPageDAO()
	{
		return pageDAO;
	}
	@Resource(name="pageDao")
	public void setPageDAO(PageDao pageDAO)
	{
		this.pageDAO = pageDAO;
	}

	public PageBean queryForPage(String hql, String action, int pageSize, int page)
	{     
		
		int allRow = pageDAO.getAllRowCount(hql); // 所有的记录数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数
		// 开始的记录
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		// offset开始记录位置
		final int offset = PageBean.countOffset(pageSize, currentPage);
		List list = pageDAO.queryForPage(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.ctrl(action, page);
		pageBean.init();
		return pageBean;
	}
	public PageBean queryForPage1(String hql, String action, int pageSize,
			int page) {
		int allRow = pageDAO.getAllRowCount(hql); // 所有的记录数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数
		// 开始的记录
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		// offset开始记录位置
		final int offset = PageBean.countOffset(pageSize, currentPage);
		List list = pageDAO.queryForPage(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.ctrl1(action, page);
		pageBean.init();
		return pageBean;
	}
	
	public PageBean queryForPageAA(String hql, String action, int pageSize, int page)
	{     
		
		int allRow = pageDAO.getAllRowCount(hql); // 所有的记录数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数
		// 开始的记录
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		// offset开始记录位置
		final int offset = PageBean.countOffset(pageSize, currentPage);
		List list = pageDAO.queryForPageAA(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.ctrlaa(action, page);
		pageBean.init();
		return pageBean;
	}
}
