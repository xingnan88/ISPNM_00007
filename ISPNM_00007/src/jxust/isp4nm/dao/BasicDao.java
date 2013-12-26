package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.vo.BaseDtoImpl;

public interface BasicDao {
	public void save(BaseDtoImpl bd);
	public void delete(BaseDtoImpl bd);
	public void update(BaseDtoImpl bd);
	public List<Object> find(BaseDtoImpl bd);
	//
	public String getHql(BaseDtoImpl bd);
	public int getLength(String hqlString);
}
