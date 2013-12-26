package jxust.isp4nm.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="standard")
public class Standard implements Serializable {

	private static final long serialVersionUID = -2279611857249677652L;

	private int id;
	
	private String number;

	private String title;
	
	private String classify;
	
	private String department;
	
	private String fbdep;

	private String content;
	
	private String createtime;
	
	private String imptime;
	
	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getFbdep() {
		return fbdep;
	}

	public void setFbdep(String fbdep) {
		this.fbdep = fbdep;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getImptime() {
		return imptime;
	}

	public void setImptime(String imptime) {
		this.imptime = imptime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
