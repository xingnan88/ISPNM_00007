package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.MPP;

public interface MPPDao {
	public void add(MPP mpp);
	public void update(MPP mpp);
	public void remove(MPP mpp);
	public List<MPP> findAll();
	public MPP findById(int id);
	
}
