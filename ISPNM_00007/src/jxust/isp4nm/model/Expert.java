package jxust.isp4nm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity()
public class Expert
{

	private int id;

	private String name;

	private String researchFields;

	private String majorFields;

	private String researchCon;

	private String workplace;

	private String workposition;

	public Expert()
	{
	}

	@Id
	@GeneratedValue(generator = "persistenceGenerator")
	@GenericGenerator(name = "persistenceGenerator", strategy = "identity")
	public int getId()
	{
		return id;
	}

	public String getMajorFields()
	{
		return majorFields;
	}

	public String getName()
	{
		return name;
	}

	public String getResearchCon()
	{
		return researchCon;
	}

	public String getResearchFields()
	{
		return researchFields;
	}

	public String getWorkplace()
	{
		return workplace;
	}

	public String getWorkposition()
	{
		return workposition;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public void setMajorFields(String majorFields)
	{
		this.majorFields = majorFields;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public void setResearchCon(String researchCon)
	{
		this.researchCon = researchCon;
	}

	public void setResearchFields(String researchFields)
	{
		this.researchFields = researchFields;
	}

	public void setWorkplace(String workplace)
	{
		this.workplace = workplace;
	}

	public void setWorkposition(String workposition)
	{
		this.workposition = workposition;
	}

}
