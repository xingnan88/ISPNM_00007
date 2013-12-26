package jxust.isp4nm.serviceImpl;

import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;
import org.springframework.stereotype.Component;

import jxust.isp4nm.dao.EquipmentDao;
import jxust.isp4nm.model.Admin;
import jxust.isp4nm.model.Equipment;
import jxust.isp4nm.service.EquipmentService;

@Component("equipmentService")
public class EquipmentServiceImpl implements EquipmentService {
	
	@Resource(name = "equipmentDao")
	private EquipmentDao equipmentDao;

	public static  String[][] currentCategorys() {
			String[][] currentCategorys = new String[4][];
			SAXReader reader = new SAXReader();
			try {
				//Document document = reader.read("EquipmentCategorys.xml");
				Document document = reader.read(new File(ServletActionContext.getRequest().getRealPath("front/equipment/EquipmentCategorys.xml")));
				Element root = document.getRootElement();
				List<Element> mainCategorys = root.elements();
				System.out.println("root.elementsCount()"+mainCategorys.size());
				currentCategorys = new String[mainCategorys.size()][];
				
				for(int mainCount = 0; mainCount < mainCategorys.size(); mainCount++){
					Element mainCategory = (Element) mainCategorys.get(mainCount);
					List<Element> list = mainCategory.elements();
					String[] categorys = new String[list.size()+1];
					categorys[0] = mainCategory.attributeValue("name");
					for(int i = 0; i < list.size(); i++ ){
						categorys[i+1] = list.get(i).getTextTrim();
						
					}
					currentCategorys[mainCount] = categorys;
				}
			} catch (DocumentException e) {
				System.out.println("初始化设备类别信息时出现错误!");
				e.printStackTrace();
			}
			return currentCategorys;
	}
	
	public boolean add(Equipment equipment) {
		equipmentDao.add(equipment);
		return true;
	}

	public boolean delete(Equipment equipment) {
		equipmentDao.delete( equipment);
		return true;
	}
	public boolean deleteMore(int[] checkedId){
		LinkedList<Equipment> equipments = new LinkedList<Equipment>();
		Equipment equipment;
		for(int i = 0; i < checkedId.length; i++){
			System.out.print(checkedId[i]+"	");
			equipment = new Equipment();
			equipment.setId(checkedId[i]);
			equipments.add(equipment);
		}
		equipmentDao.deleteMore(equipments);
		return true;
	}

	public Equipment get(int id) {
		Equipment equipment = equipmentDao.get(id);
		List<Equipment.Parameter> frontParameters = new LinkedList<Equipment.Parameter>(); 
		String[] groups = equipment.getParameters().split("\\"+"\\;");
		for(int i = 0; i < groups.length; i++){
			if(groups[i].trim().equals(""))
				continue;
			String[] keyAndValue = groups[i].split("\\"+"\\,");
			frontParameters.add(equipment.new Parameter(keyAndValue[0], keyAndValue[1]));
		}
		equipment.setFrontParameters(frontParameters);
		return equipment;
	}

	public long getQueryCount() {
		return equipmentDao.getCount();
	}

	public List<Equipment> list(String type, int page) {
		return equipmentDao.find(type, page);
	}

	/*public Admin login(Admin admin) {
		return equipmentDao.login(admin);
	}*/

	public List<Equipment> search(String category, String name, String model, String enterprise, String provenance, String info, String price, String price2 , int page) {
		return equipmentDao.find(category, name, model, enterprise, provenance, info, price, price2 , page);
	}

	public List<Equipment> search(String keyWord, int method, int page) {
		List<Equipment> resultList = null;
		switch (method) {
		case 0:
			resultList =  equipmentDao.findByName(keyWord,page);
			break;
		case 1:
			resultList =  equipmentDao.findByCategory(keyWord,page); 
			break;
		case 2:
			resultList =  equipmentDao.findByEnterprise(keyWord,page); 
			break;
		default:
			break;
		}
		return resultList;
	}

	public boolean Update(Equipment equipment) {
		equipmentDao.update(equipment);
		return true;
	}
	
}
