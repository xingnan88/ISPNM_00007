package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.Patent;

public interface PatentService
{
	public abstract void add(Patent patent);
	public abstract List<Patent> findAll();
	public abstract void update(Patent patent);
	public abstract void delete(int id);
	public abstract Patent findById(int id);
	public abstract List<Patent> list(Patent patent);
	public abstract void deleteSelect(int[] ids);
	public List<Patent> listNewPatents(String category);
}
