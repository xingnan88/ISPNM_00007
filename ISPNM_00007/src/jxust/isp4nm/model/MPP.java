package jxust.isp4nm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


import org.hibernate.annotations.GenericGenerator;

@Entity(name="mpp")
public class MPP {
	private int id;
	private String kcfs;
	private String ffname;
	private String syfw;
	private String kkcs;
	private String cqgz;
	private String hcgz;
	private String dhlj;
	private String tplj;
	private String wzsm;
	private int counts;
	private Date time;
	
	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getKcfs() {
		return kcfs;
	}
	public void setKcfs(String kcfs) {
		this.kcfs = kcfs;
	}
	public String getFfname() {
		return ffname;
	}
	public void setFfname(String ffname) {
		this.ffname = ffname;
	}
	public String getSyfw() {
		return syfw;
	}
	public void setSyfw(String syfw) {
		this.syfw = syfw;
	}
	public String getKkcs() {
		return kkcs;
	}
	public void setKkcs(String kkcs) {
		this.kkcs = kkcs;
	}
	public String getCqgz() {
		return cqgz;
	}
	public void setCqgz(String cqgz) {
		this.cqgz = cqgz;
	}
	public String getHcgz() {
		return hcgz;
	}
	public void setHcgz(String hcgz) {
		this.hcgz = hcgz;
	}
	public String getDhlj() {
		return dhlj;
	}
	public void setDhlj(String dhlj) {
		this.dhlj = dhlj;
	}
	public String getTplj() {
		return tplj;
	}
	public void setTplj(String tplj) {
		this.tplj = tplj;
	}
	public String getWzsm() {
		return wzsm;
	}
	public void setWzsm(String wzsm) {
		this.wzsm = wzsm;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	
	
}
