package jxust.isp4nm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.dao.PatentDao;
import jxust.isp4nm.model.Patent;
import jxust.isp4nm.service.PatentService;

import org.springframework.stereotype.Component;

@Component(value = "patentService")
public class PatentServiceImpl implements PatentService
{
	private PatentDao pd;

	public PatentDao getPd()
	{
		return pd;
	}

	@Resource(name = "patentDao")
	public void setPd(PatentDao pd)
	{
		this.pd = pd;
	}

	public void add(Patent patent)
	{
		pd.add(patent);
	}

	public List<Patent> findAll()
	{
		return pd.findAll();
	}

	public void update(Patent patent)
	{
		pd.update(patent);
	}

	public void delete(int id)
	{
		pd.delete(id);
	}

	public Patent findById(int id)
	{
		return pd.findById(id);
	}

	public List<Patent> list(Patent patent)
	{
		return pd.list(patent);
	}

	public void deleteSelect(int[] ids)
	{
		pd.deleteSelect(ids);
	}
	public List<Patent> listNewPatents(String category) {
		return pd.listNewPatents(category);
	}

}
