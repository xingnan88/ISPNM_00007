package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.TechNews;

public interface TechNewsService {
	public abstract void add(TechNews techNews);
	public abstract List<TechNews> findAll();
	public abstract void update(TechNews techNews);
	public abstract void delete(int id);
	public abstract TechNews findById(int id);
	public abstract List<TechNews> list(TechNews techNews);
	public abstract void deleteSelect(int[] ids);
	public void  updateBrowseTimes(int id); 
	public List<TechNews> listNew(String bigCategory,String smallCategory);

}
