package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.TechNewsDao;
import jxust.isp4nm.model.TechNews;
import jxust.isp4nm.service.TechNewsService;

import org.springframework.stereotype.Component;
@Component(value="techNewsService")
public class TechNewsServiceImpl implements TechNewsService {
	private TechNewsDao techNewsDao;
	
	public TechNewsDao getTechNewsDao() {
		return techNewsDao;
	}
	
	@Resource(name="techNewsDao")
	public void setTechNewsDao(TechNewsDao techNewsDao) {
		this.techNewsDao = techNewsDao;
	}

	
	public void add(TechNews techNews)
	{
		techNewsDao.add(techNews);
	}

	public void delete(int id) {
		techNewsDao.delete(id);
		
	}

	public void deleteSelect(int[] ids) {
		techNewsDao.deleteSelect(ids);
		
	}

	public List<TechNews> findAll() {
		return techNewsDao.findAll();
	}

	public TechNews findById(int id) {
		return techNewsDao.findById(id);
	}

	public List<TechNews> list(TechNews techNews) {
		return techNewsDao.list(techNews);
	}

	public void update(TechNews techNews) {
		techNewsDao.update(techNews);
		
	}

	public void updateBrowseTimes(int id) {
		
		this.techNewsDao.updateBrowseTimes(id);
	}
	public List<TechNews> listNew(String bigCategory, String smallCategory) {
		return techNewsDao.listNew(bigCategory, smallCategory);
	}

}
