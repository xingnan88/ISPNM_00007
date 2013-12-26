package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.ExpertDao;
import jxust.isp4nm.model.Expert;
import jxust.isp4nm.service.ExpertService;

import org.springframework.stereotype.Component;

@Component("expertService")
public class ExpertServiceImpl implements ExpertService
{
	private ExpertDao expertDao;

	public void add(Expert expert)
	{
		expertDao.save(expert);
	}

	public void deleteByIdExpert(int id)
	{
		expertDao.deleteById(id);

	}

	public List<Expert> find(String sql, int page)
	{
		return expertDao.find(sql, page);
	}

	public List<Expert> find1(String sql, int page)
	{
		return expertDao.find1(sql, page);
	}

	public List<Expert> findAllExpert(int page)
	{
		return expertDao.findAll(page);
	}

	public Expert findByIdExpert(int id)
	{
		return expertDao.findById(id);
	}

	public List<Expert> findByResearchFields(String researchFields)
	{
		return expertDao.findByResearchFields(researchFields);
	}

	public List<Expert> findByResearchFieldsAll(String researchFields, int page)
	{
		return expertDao.findByResearchFieldsAll(researchFields, page);
	}

	public Expert getExpert(int id)
	{
		return expertDao.getExpert(id);
	}

	public ExpertDao getExpertDao()
	{
		return expertDao;
	}

	public int getRows()
	{
		return expertDao.getRows();
	}

	public int getRows(String researchFields)
	{
		return expertDao.getRows(researchFields);
	}

	public int getRows(String researchFields, String name)
	{
		return expertDao.getRows(researchFields, name);
	}

	public int getRows(String researchFields, String name, String majorFields,
			String workplace, String researchCon, String workposition)
	{
		return expertDao.getRows(researchFields, name, majorFields, workplace,
				researchCon, workposition);
	}

	@Resource(name = "expertDao")
	public void setExpertDao(ExpertDao expertDao)
	{
		this.expertDao = expertDao;
	}

	public void updateExpert(Expert expert)
	{
		expertDao.update(expert);
	}

	public void updateExpert(int id)
	{
		expertDao.update(id);
	}
	@Override
	public List<Expert> listNewExpert(String Category) {
		return expertDao.listNewExpert(Category);
	}

}
