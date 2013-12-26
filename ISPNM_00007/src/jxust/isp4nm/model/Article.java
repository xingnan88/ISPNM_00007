package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="article")
public class Article {

	private int articleId;				//���ı��
	private String articleName;			//ƪ��
	private String author;				//����
	private String annualVolume;		//�����
	private String mechanism;			//����
	private String keyWord;				//�ؼ���
	private String chineseAbstract;		//����ժҪ
	private String journalName;			//�ڿ���
	private String cn;					//���ڱ�׼����
	private String issn;				//���ʱ�׼������������
	private String classId;				//�����
	private String classCode;			//����
	private String fullArticle;			//ȫ��
	private int browseTimes;			//�������
	
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
