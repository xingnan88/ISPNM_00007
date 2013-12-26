package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.MetalInfo;

public interface MetalInfoDao {

	public MetalInfo findByid(int metalNo);
	public List<MetalInfo> MetalList();
	public MetalInfo findByKeyword(String keyWord);
}
