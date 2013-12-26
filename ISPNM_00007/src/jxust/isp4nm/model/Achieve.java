package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "achieve")
public class Achieve {
	private int achieveId;				//�ɹ����
	private String achieveName;			//�ɹ�����
	private String author;				//����
	private String achieveTime;			//��ɹ�ʱ��
	private String awardName;			//������
	private String awardGrade;			//�񽱵ȼ�
	private String useUnit;				//���õ�λ
	private String socialEconomyBenefit;//��ᾭ��Ч��
	private String publishUnit;			//���浥λ
	private String patentClass;			//ר�����
	private String approvalUnit;		//��׼��λ
	private String certNo;				//֤���
	private String projectSource;		//��Ŀ��Դ
	private String accountFund;			//���ʾ���
	private String publication;			//�������������
	private String inputReprint;		//¼��ת�����
	private String achieveType;			//�ɹ����
	private String collegeType;			//ѧԺ���
	private String chineseAbstract;		//����ժҪ
	private String remark;				//��ע
	private String browseTimes;			//�������
	
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
