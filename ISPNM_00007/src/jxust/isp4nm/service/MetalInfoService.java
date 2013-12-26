package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.MetalInfo;

public interface MetalInfoService {

	public List<MetalInfo> MetalList();
	public MetalInfo findByid(int metalNo);
	public MetalInfo findByKeyword(String keyWord);
}
