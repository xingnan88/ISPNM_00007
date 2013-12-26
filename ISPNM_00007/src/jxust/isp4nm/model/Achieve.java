package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "achieve")
public class Achieve {
	private int achieveId;				//成果编号
	private String achieveName;			//成果名称
	private String author;				//作者
	private String achieveTime;			//获成果时间
	private String awardName;			//获奖名称
	private String awardGrade;			//获奖等级
	private String useUnit;				//采用单位
	private String socialEconomyBenefit;//社会经济效益
	private String publishUnit;			//出版单位
	private String patentClass;			//专利类别
	private String approvalUnit;		//批准单位
	private String certNo;				//证书号
	private String projectSource;		//项目来源
	private String accountFund;			//到帐经费
	private String publication;			//发表刊物、会议名称
	private String inputReprint;		//录入转载情况
	private String achieveType;			//成果类别
	private String collegeType;			//学院类别
	private String chineseAbstract;		//中文摘要
	private String remark;				//备注
	private String browseTimes;			//浏览次数
	
	@Id
	@GeneratedValue
	public int getAchieveId() {
		return achieveId;
	}

	public void setAchieveId(int achieveId) {
		this.achieveId = achieveId;
	}

	public String getAchieveName() {
		return achieveName;
	}

	public void setAchieveName(String achieveName) {
		this.achieveName = achieveName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getAchieveTime() {
		return achieveTime;
	}

	public void setAchieveTime(String achieveTime) {
		this.achieveTime = achieveTime;
	}

	public String getAwardName() {
		return awardName;
	}

	public void setAwardName(String awardName) {
		this.awardName = awardName;
	}

	public String getAwardGrade() {
		return awardGrade;
	}

	public void setAwardGrade(String awardGrade) {
		this.awardGrade = awardGrade;
	}

	public String getUseUnit() {
		return useUnit;
	}

	public void setUseUnit(String useUnit) {
		this.useUnit = useUnit;
	}

	public String getSocialEconomyBenefit() {
		return socialEconomyBenefit;
	}

	public void setSocialEconomyBenefit(String socialEconomyBenefit) {
		this.socialEconomyBenefit = socialEconomyBenefit;
	}

	public String getPublishUnit() {
		return publishUnit;
	}

	public void setPublishUnit(String publishUnit) {
		this.publishUnit = publishUnit;
	}

	public String getPatentClass() {
		return patentClass;
	}

	public void setPatentClass(String patentClass) {
		this.patentClass = patentClass;
	}

	public String getApprovalUnit() {
		return approvalUnit;
	}

	public void setApprovalUnit(String approvalUnit) {
		this.approvalUnit = approvalUnit;
	}

	public String getCertNo() {
		return certNo;
	}

	public void setCertNo(String certNo) {
		this.certNo = certNo;
	}

	public String getProjectSource() {
		return projectSource;
	}

	public void setProjectSource(String projectSource) {
		this.projectSource = projectSource;
	}

	public String getAccountFund() {
		return accountFund;
	}

	public void setAccountFund(String accountFund) {
		this.accountFund = accountFund;
	}

	public String getPublication() {
		return publication;
	}

	public void setPublication(String publication) {
		this.publication = publication;
	}

	public String getInputReprint() {
		return inputReprint;
	}

	public void setInputReprint(String inputReprint) {
		this.inputReprint = inputReprint;
	}

	public String getAchieveType() {
		return achieveType;
	}

	public void setAchieveType(String achieveType) {
		this.achieveType = achieveType;
	}

	public String getCollegeType() {
		return collegeType;
	}

	public void setCollegeType(String collegeType) {
		this.collegeType = collegeType;
	}

	public String getChineseAbstract() {
		return chineseAbstract;
	}

	public void setChineseAbstract(String chineseAbstract) {
		this.chineseAbstract = chineseAbstract;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getBrowseTimes() {
		return browseTimes;
	}

	public void setBrowseTimes(String browseTimes) {
		this.browseTimes = browseTimes;
	}
}
