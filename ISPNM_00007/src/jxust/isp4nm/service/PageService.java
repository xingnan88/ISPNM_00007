package jxust.isp4nm.service;

import jxust.isp4nm.model.PageBean;


public interface PageService {
	public PageBean queryForPage(String hql, String action, int pageSize, int page);
	public PageBean queryForPage1(String hql, String action, int pageSize, int page);
	public PageBean queryForPageAA(String hql, String action, int pageSize, int page);
}
