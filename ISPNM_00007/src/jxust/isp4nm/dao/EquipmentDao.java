package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Equipment;

public interface EquipmentDao {
	public static short PAGING_SIZE = 25;
	
	//public Admin login(Admin admin);
	public boolean add(Equipment equipment);
	public boolean delete(Equipment equipment);
	public boolean deleteMore(List<Equipment> equipments);
	public List<Equipment> findPage(String hql,int page);
	public List<Equipment> find(String category,int page);
	public List<Equipment> find(String category, String name, String model, String enterprise, String provenance, String info, String price, String price2,int page);
	public List<Equipment> findByName(String keyWord,int page);
	public List<Equipment> findByCategory(String keyWord,int page);
	public List<Equipment> findByEnterprise(String keyWord,int page);
	public Equipment get(int id);
	public long getCount();
	public void update(Equipment equipment);
}
