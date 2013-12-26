package jxust.isp4nm.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;

@Entity(name="admin")
public class Admin {
	private int id;
	private String adminname;
	private String adminpassword;
	
	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	

}
