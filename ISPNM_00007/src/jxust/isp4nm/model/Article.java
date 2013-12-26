package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="article")
public class Article {

	private int articleId;				//论文编号
	private String articleName;			//篇名
	private String author;				//作者
	private String annualVolume;		//年卷期
	private String mechanism;			//机构
	private String keyWord;				//关键词
	private String chineseAbstract;		//中文摘要
	private String journalName;			//期刊名
	private String cn;					//国内标准刊号
	private String issn;				//国际标准连续出版物编号
	private String classId;				//分类号
	private String classCode;			//类别号
	private String fullArticle;			//全文
	private int browseTimes;			//浏览次数
	
	@Id
	@GeneratedValue
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAnnualVolume() {
		return annualVolume;
	}
	public void setAnnualVolume(String annualVolume) {
		this.annualVolume = annualVolume;
	}
	public String getMechanism() {
		return mechanism;
	}
	public void setMechanism(String mechanism) {
		this.mechanism = mechanism;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getChineseAbstract() {
		return chineseAbstract;
	}
	public void setChineseAbstract(String chineseAbstract) {
		this.chineseAbstract = chineseAbstract;
	}
	public String getJournalName() {
		return journalName;
	}
	public void setJournalName(String journalName) {
		this.journalName = journalName;
	}
	public String getCn() {
		return cn;
	}
	public void setCn(String cn) {
		this.cn = cn;
	}
	public String getIssn() {
		return issn;
	}
	public void setIssn(String issn) {
		this.issn = issn;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public String getFullArticle() {
		return fullArticle;
	}
	public void setFullArticle(String fullArticle) {
		this.fullArticle = fullArticle;
	}
	public int getBrowseTimes() {
		return browseTimes;
	}
	public void setBrowseTimes(int browseTimes) {
		this.browseTimes = browseTimes;
	}
}
