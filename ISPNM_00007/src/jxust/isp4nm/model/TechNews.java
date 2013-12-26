package jxust.isp4nm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class TechNews {
	
	private int id;
	private String newstitle;
	private String newscontent;
	private int browseTimes;  //ä¯ÀÀ´ÎÊý
	private Date newstime;
	private String starttime;
	private String endtime;
	private String newsfrom;
	private String newspicture;
	private String bigclassname;
	private String smallclassname;
	private String isimg;

	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	

	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getNewscontent() {
		return newscontent;
	}
	public void setNewscontent(String newscontent) {
		this.newscontent = newscontent;
	}
	
	public void setBrowseTimes(int browseTimes) {
		this.browseTimes = browseTimes;
	}
	
	public int getBrowseTimes() {
		return browseTimes;
	}
	public Date getNewstime() {
		return newstime;
	}
	
	public void setNewstime(Date newstime) {
		this.newstime = newstime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	@Transient
	public String getEndtime() {
		return endtime;
	}
	
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	@Transient
	public String getStarttime() {
		return starttime;
	}
	
	public String getNewsfrom() {
		return newsfrom;
	}
	public void setNewsfrom(String newsfrom) {
		this.newsfrom = newsfrom;
	}
	public String getNewspicture() {
		return newspicture;
	}
	public void setNewspicture(String newspicture) {
		this.newspicture = newspicture;
	}
	public String getBigclassname() {
		return bigclassname;
	}
	public void setBigclassname(String bigclassname) {
		this.bigclassname = bigclassname;
	}
	public String getSmallclassname() {
		return smallclassname;
	}
	public void setSmallclassname(String smallclassname) {
		this.smallclassname = smallclassname;
	}
	public String getIsimg() {
		return isimg;
	}
	public void setIsimg(String isimg) {
		this.isimg = isimg;
	}
	
	
	
}
