package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="metalInfo")
public class MetalInfo {

	private int metalNo;
	private String metalName;
	private String metalSymbol;
	private String metalImgUrl;
	private String metalBasic;
	private String metalApp;
	private String metalAlloy;
	private String metalMethod;
	
	@Id
	@GeneratedValue
	public int getMetalNo() {
		return metalNo;
	}
	public void setMetalNo(int metalNo) {
		this.metalNo = metalNo;
	}
	public String getMetalName() {
		return metalName;
	}
	public void setMetalName(String metalName) {
		this.metalName = metalName;
	}
	public String getMetalSymbol() {
		return metalSymbol;
	}
	public void setMetalSymbol(String metalSymbol) {
		this.metalSymbol = metalSymbol;
	}
	public String getMetalImgUrl() {
		return metalImgUrl;
	}
	public void setMetalImgUrl(String metalImgUrl) {
		this.metalImgUrl = metalImgUrl;
	}
	public String getMetalBasic() {
		return metalBasic;
	}
	public void setMetalBasic(String metalBasic) {
		this.metalBasic = metalBasic;
	}
	public String getMetalApp() {
		return metalApp;
	}
	public void setMetalApp(String metalApp) {
		this.metalApp = metalApp;
	}
	public String getMetalAlloy() {
		return metalAlloy;
	}
	public void setMetalAlloy(String metalAlloy) {
		this.metalAlloy = metalAlloy;
	}
	public String getMetalMethod() {
		return metalMethod;
	}
	public void setMetalMethod(String metalMethod) {
		this.metalMethod = metalMethod;
	}
	
}
