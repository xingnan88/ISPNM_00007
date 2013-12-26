package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.MPP;

public interface MPPService {
	public void add(MPP mpp);
	public void update(MPP mpp);
	public void remove(MPP mpp);
	public List<MPP> findAll();
	public MPP findById(int id);
	
}
