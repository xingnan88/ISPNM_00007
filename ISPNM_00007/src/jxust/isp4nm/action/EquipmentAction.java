package jxust.isp4nm.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Admin;
import jxust.isp4nm.model.Equipment;
import jxust.isp4nm.service.EquipmentService;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("equipmentAction")
@Scope("prototype")
public class EquipmentAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	
	public static final String LIST = "list";
	public static final String LOGIN = "login";
	public static final String VIEW = "view";
	public static final String PIC_DIR = "WebRoot\\equipment\\eq_pic";
	public static final Pattern PIC_FILTER = Pattern.compile("^img/.+$");
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	
	private Admin admin;
	
	@Resource
	private EquipmentService equipmentService;
	private Equipment equipment;
	
	private String category;
	private String name;
	private String model;
	private String enterprise;
	private String provenance;
	private String info;
	private String price;
	private String price2;
	
	private List<Equipment> equipments;
	private String keyWord = "";
	private int method;
	private int page = 1;
	private long count;
	private int[] checkedId;
	private File pic;
	private String picFileName;
	private String picContentType = "";
	
	public void init(){
	}
	
	public String add(){
		String parameters = "";
		String paraKey ;
		String paraValue;
		for(int i = 0; i < 15; i++){
			paraKey = request.getParameter("paraKey"+i).trim();
			paraValue = request.getParameter("paraValue"+i).trim();
			if(!( (paraKey.equals("") || paraKey == null) && (paraValue.equals("") || paraValue == null) )){
				parameters += paraKey+"\\,";
				parameters += paraValue+"\\;";
			}
		}
		equipment.setParameters(parameters);
		equipmentService.add(equipment);
		if(picContentType.matches("^img/.+$") && pic !=null){
			try {
				FileUtils.copyFile(pic,new File(session.getServletContext().getRealPath(PIC_DIR),equipment.getId()+"."+picContentType.split("/")[1]) );
			} catch (IOException e) {
				e.printStackTrace();
			}
			request.setAttribute("tips", "添加设备信息成功！");
		} else {
			request.setAttribute("tips", "设备信息已添加，<br/>但图片错误未保存，请以后修改！");
			return ERROR;
		}
		//request.setAttribute("prev", "add");
		return SUCCESS;
	}
	
	public String view() {
		equipment = equipmentService.get(equipment.getId());
		if(equipment == null){
			request.setAttribute("tips", "错误的请求，查看的设备信息不存在！");
			return ERROR;
		} else {
			return VIEW;
		}
	}
	
	public String update(){
		String parameters = "";
		String paraKey ;
		String paraValue;
		for(int i = 0; i < 15; i++){
			paraKey = request.getParameter("paraKey"+i).trim();
			paraValue = request.getParameter("paraValue"+i).trim();
			if(!( (paraKey.equals("") || paraKey == null) && (paraValue.equals("") || paraValue == null) )){
				parameters += paraKey+"\\,";
				parameters += paraValue+"\\;";
			}
		}
		equipment.setParameters(parameters);
		if(equipmentService.Update(equipment)){
			request.setAttribute("tips", "修改设备信息成功！");
			request.setAttribute("prev", "modify");
			return SUCCESS;
		} else {
			request.setAttribute("tips", "修改设备信息失败！");
			request.setAttribute("prev", "modify");
			return ERROR;
		}
	}
	
	public String search() throws Exception{
		if(request.getParameter("page") != null && !"".equals(request.getParameter("page"))) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		if(keyWord == null) {
			keyWord = request.getParameter("keyWord");
		}
		if(method == 0) {
			if(request.getParameter("method") != null) {
				method = Integer.parseInt(request.getParameter("method"));
			}
		}
		if(keyWord.equals(new String(keyWord.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"GBK");
		}
		equipments = equipmentService.search(keyWord, method, page);
		request.setAttribute("keyWord", keyWord);
		request.setAttribute("method", method);
		return "list2";
	}
	
	public String list() throws Exception {
		if(request.getParameter("page") != null && !"".equals(request.getParameter("page"))) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		String category = "";
		if(equipment == null) {
			category = request.getParameter("category");
		}else {
			category = equipment.getCategory();
		}
		if(category.equals(new String(category.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			category = new String(category.getBytes("ISO-8859-1"),"GBK");
		}
		equipments = equipmentService.list(category,page);
		request.setAttribute("category", category);
		return LIST;
	}
	
	public String delete(){
		if(equipmentService.delete(equipment)){
			request.setAttribute("tips", "删除设备信息成功！");
			return SUCCESS;
		} else{
			request.setAttribute("tips", "删除设备信息出现错误！");
			return ERROR;
		}
	}
	
	public String deleteMore(){
		if(equipmentService.deleteMore(checkedId)){
			request.setAttribute("tips", "删除设备信息成功！");
			return SUCCESS;
		} else{
			request.setAttribute("tips", "删除设备信息出现错误！");
			return ERROR;
		}
	}
	
	public String advancedSearch() throws Exception{
		if(request.getParameter("page") != null && !"".equals(request.getParameter("page"))) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		if(equipment == null) {
			category = request.getParameter("category");
			if(category.equals(new String(category.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				category = new String(category.getBytes("ISO-8859-1"),"GBK");
			}
			if(category == null) {
				category = " ";
			}
			name = request.getParameter("name");
			if(name.equals(new String(name.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				name = new String(name.getBytes("ISO-8859-1"),"GBK");
			}
			if(name == null) {
				name = "";
			}
			model = request.getParameter("model");
			if(model.equals(new String(model.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				model = new String(model.getBytes("ISO-8859-1"),"GBK");
			}
			if(model == null) {
				model = "";
			}
			enterprise = request.getParameter("enterprise");
			if(enterprise.equals(new String(enterprise.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				enterprise = new String(enterprise.getBytes("ISO-8859-1"),"GBK");
			}
			if(enterprise == null) {
				enterprise = "";
			}
			provenance = request.getParameter("provenance");
			if(provenance.equals(new String(provenance.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				provenance = new String(provenance.getBytes("ISO-8859-1"),"GBK");
			}
			if(provenance == null) {
				provenance = "";
			}
			info = request.getParameter("info");
			if(info.equals(new String(info.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				info = new String(info.getBytes("ISO-8859-1"),"GBK");
			}
			if(info == null) {
				info = "";
			}
			price = request.getParameter("price");
			if(price.equals(new String(price.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				price = new String(price.getBytes("ISO-8859-1"),"GBK");
			}
			if(price == null) {
				price = "";
			}
			price2 = request.getParameter("price2");
			if(price2.equals(new String(price2.getBytes("ISO-8859-1"), "ISO-8859-1"))){
				price2 = new String(price2.getBytes("ISO-8859-1"),"GBK");
			}
			if(price2 == null) {
				price2 = "";
			}
		}
		if(equipment != null) {
			category = equipment.getCategory();
			name = equipment.getName();
			model = equipment.getModel();
			enterprise = equipment.getEnterprise();
			provenance = equipment.getProvenance();
			info = equipment.getInfo();
			price = equipment.getPrice();
			price2 = equipment.getPrice2();
		}
		
		equipments = equipmentService.search(category, name, model, enterprise, provenance, info, price, price2 , page);
		request.setAttribute("category", category);
		request.setAttribute("name", name);
		request.setAttribute("model", model);
		request.setAttribute("enterprise", enterprise);
		request.setAttribute("provenance", provenance);
		request.setAttribute("info", info);
		request.setAttribute("price", price);
		request.setAttribute("price2", price2);
		return "searchlist";
	}
	
	public void ajaxAdminCheck() throws IOException{
		PrintWriter out = response.getWriter();
		String result;
		if(session.getAttribute("admin") == null)
			result = "failure";
		else
			result = "success";
		out.print(result);
		System.out.println(result);
		out.close();
	}
	
	public void ajaxLogout() throws IOException{
		PrintWriter out = response.getWriter();
		String result;
		session.invalidate();
		result = "success";
		System.out.println(result);
		out.print(result);
		out.close();
		
	}
	
	//getter and setter
	public Equipment getEquipment() {
		return equipment;
	}

	public void setEquipment(Equipment equipment) {
		this.equipment = equipment;
	}
	
	public List<Equipment> getEquipments() {
		return equipments;
	}

	public void setEquipments(List<Equipment> equipments) {
		this.equipments = equipments;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getMethod() {
		return method;
	}

	public void setMethod(int method) {
		this.method = method;
	}

	public int[] getCheckedId() {
		return checkedId;
	}

	public void setCheckedId(int[] checkedId) {
		this.checkedId = checkedId;
	}

	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		this.session = arg0.getSession();
	} 

	public void setServletResponse(HttpServletResponse arg0) {
		this.response = arg0;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public long getCount() {
		count = equipmentService.getQueryCount();
		return count;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getEnterprise() {
		return enterprise;
	}

	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}

	public String getProvenance() {
		return provenance;
	}

	public void setProvenance(String provenance) {
		this.provenance = provenance;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPrice2() {
		return price2;
	}

	public void setPrice2(String price2) {
		this.price2 = price2;
	}

}
