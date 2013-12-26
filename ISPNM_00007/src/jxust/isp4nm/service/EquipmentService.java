package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.Equipment;

public interface EquipmentService {
	public boolean add(Equipment equipment);
	public boolean delete(Equipment equipment);
	public boolean deleteMore(int[] checkedId);
	public Equipment get(int id);
	public long getQueryCount();
	public List<Equipment> list(String category, int page);
	//public Admin login(Admin admin);
	public List<Equipment> search(String category, String name, String model, String enterprise, String provenance, String info, String price, String price2, int page);
	public List<Equipment> search(String keyWord, int method, int page);
	public boolean Update(Equipment equipment);
}
 