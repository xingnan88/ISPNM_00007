package jxust.isp4nm.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import jxust.isp4nm.model.Expert;
import jxust.isp4nm.service.ExpertService;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("expertActionBack")
@Scope("prototype")
public class ExpertActionBack extends ActionSupport implements
		ServletRequestAware
{
	private String name;
	private int page;

	private int pageCount;// �ܵ�ҳ����

	private int id;

	private String majorFields;// רҵ����

	private String researchFields;

	private String researchCon;

	private String workplace;

	private String workposition;

	private List<Expert> experts;

	private Expert expert;

	private HttpServletRequest request;

	private ExpertService expertService;

	public String add()
	{
		Expert expert = new Expert();
		expert.setName(getName().trim());
		expert.setMajorFields(getMajorFields().trim());
		expert.setResearchCon(getResearchCon().trim());
		expert.setResearchFields(researchFields);
		expert.setWorkplace(getWorkplace().trim());
		expert.setWorkposition(getWorkposition().trim());
		expertService.add(expert);
		return "add";
	}

	public String browser()
	{
		expert = expertService.getExpert(id);
		request.setAttribute("researchFields", expert.getResearchFields());
		return "browser";
	}

	public String delete()
	{
		expertService.deleteByIdExpert(id);
		return "delete";
	}

	public String find()
	{

		getfind();
		if (page == 0)
		{
			page = 1;
		}
		if (page == (pageCount + 1))
		{
			if (page == 1)
			{
				page = 1;
			} else
			{
				page = pageCount;
			}
		}

		String sql = "";
		if (getResearchFields().equals("�о�����"))
		{
			sql = "from Expert where  name like '%" + name + "%'";
		} else
		{
			sql = "from Expert where researchFields='" + researchFields + "'"
					+ "  and name like '%" + name + "%'";
		}

		try
		{
			experts = expertService.find(sql, getPage());
			if (experts.size() == 0)
			{
				return "no";
			}
			for (int i = 0; i < experts.size(); i++)
			{
				Expert expert = experts.get(i);
				if (!getResearchFields().equals("�о�����"))
				{
					String researchFields = expert.getResearchFields().replace(
							getResearchFields(),
							"<font color=\"#FF0000\">" + getResearchFields()
									+ "</font>");
					expert.setResearchFields(researchFields);
				}

				if (!getName().equals(""))
				{
					String name = expert.getName().replace(getName(),
							"<font color=\"#FF0000\">" + getName() + "</font>");
					expert.setName(name);
				}

			}

		} catch (Exception e)
		{
			return INPUT;
		}
		return "find";
	}

	public String findAll()
	{
		getRowsPage();
		if (page == 0)
		{
			page = 1;
		}
		if (page == (pageCount + 1))
		{
			if (page == 1)
			{
				page = 1;
			} else
			{
				page = pageCount;
			}
		}
		request.setAttribute("page", page);
		try
		{
			experts = expertService.findAllExpert(page);

		} catch (Exception e)
		{
			return INPUT;
		}
		return "findAll";
	}

	public String findGaoji()
	{
		getfindGaoji();
		if (page == 0)
		{
			page = 1;
		}
		if (page == (pageCount + 1))
		{
			if (page == 1)
			{
				page = 1;
			} else
			{
				page = pageCount;
			}

		}
		StringBuffer sql = new StringBuffer();
		if (researchFields.equals("�о�����"))
		{
			sql.append("from Expert where researchFields like '%%'");
		} else
		{
			sql.append("from Expert where researchFields like '%"
					+ researchFields + "%'");
		}
		if (!name.equals(""))
		{
			sql.append("  and name like '%" + name + "%'");
		}
		if (!majorFields.equals(""))
		{
			sql.append(" and majorFields like '%" + majorFields + "%'");
		}
		if (!workplace.equals(""))
		{
			sql.append(" and workplace like '%" + workplace + "%'");
		}
		if (!researchCon.equals(""))
		{
			sql.append(" and researchCon like '%" + researchCon + "%'");
		}
		if (!workposition.equals(""))
		{
			sql.append(" and workposition like '%" + workposition + "%'");
		}

		try
		{
			experts = expertService.find(sql.toString(), getPage());
			if (experts.size() == 0)
			{
				return "no";
			}
			for (int i = 0; i < experts.size(); i++)
			{
				Expert expert = experts.get(i);

				if (!getResearchFields().equals("�о�����"))
				{
					String researchFields = expert.getResearchFields().replace(
							getResearchFields(),
							"<font color=\"#FF0000\">" + getResearchFields()
									+ "</font>");
					expert.setResearchFields(researchFields);
				}

				if (!getName().equals(""))
				{
					String name = expert.getName().replace(getName(),
							"<font color=\"#FF0000\">" + getName() + "</font>");
					expert.setName(name);
				}

				if (!getMajorFields().equals(""))
				{
					String majorFields = expert.getMajorFields().replace(
							getMajorFields(),
							"<font color=\"#FF0000\">" + getMajorFields()
									+ "</font>");
					expert.setMajorFields(majorFields);
				}

				if (!getWorkplace().equals(""))
				{
					String workplace = expert.getWorkplace().replace(
							getWorkplace(),
							"<font color=\"#FF0000\">" + getWorkplace()
									+ "</font>");
					expert.setWorkplace(workplace);
				}

				if (!getResearchCon().equals(""))
				{
					String researchCon = expert.getResearchCon().replace(
							getResearchCon(),
							"<font color=\"#FF0000\">" + getResearchCon()
									+ "</font>");
					expert.setResearchCon(researchCon);
				}

				if (!getWorkposition().equals(""))
				{
					String workposition = expert.getWorkposition().replace(
							getWorkposition(),
							"<font color=\"#FF0000\">" + getWorkposition()
									+ "</font>");
					expert.setWorkposition(workposition);
				}

			}
		} catch (Exception e)
		{
			return INPUT;
		}
		return "findGaoji";
	}

	public Expert getExpert()
	{
		return expert;
	}

	public List<Expert> getExperts()
	{
		return experts;
	}

	public ExpertService getExpertService()
	{
		return expertService;
	}

	public int getfind()
	{

		int count = expertService.getRows(researchFields, name);

		if (count % 20 == 0)
		{
			pageCount = count / 20;
		} else
		{
			pageCount = count / 20 + 1;
		}
		if (count != 0)
		{
			request.setAttribute("pageCount", pageCount);
		}
		return pageCount;

	}

	public int getfindGaoji()
	{
		int count = expertService.getRows(researchFields, name, majorFields,
				workplace, researchCon, workposition);
		if (count % 20 == 0)
		{
			pageCount = count / 20;
		} else
		{
			pageCount = count / 20 + 1;
		}
		if (count != 0)
		{
			request.setAttribute("pageCount", pageCount);
		}
		return pageCount;

	}

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

	public int getPage()
	{
		return page;
	}

	public int getPageCount()
	{
		return pageCount;
	}

	public String getResearchCon()
	{
		return researchCon;
	}

	public String getResearchFields()
	{
		return researchFields;
	}

	public int getRowsPage()
	{
		int count = expertService.getRows();
		if (count % 20 == 0)
		{
			pageCount = count / 20;
		} else
		{
			pageCount = count / 20 + 1;
		}
		if (count != 0)
		{
			request.setAttribute("pageCount", pageCount);
		}
		return pageCount;
	}

	public String getWorkplace()
	{
		return workplace;
	}

	public String getWorkposition()
	{
		return workposition;
	}

	public String goUpdate()
	{
		expert = expertService.getExpert(id);
		request.setAttribute("researchFields", expert.getResearchFields());
		return "goUpdate";
	}

	public String piliangDel()
	{
		String[] stuIds = ServletActionContext.getRequest().getParameterValues(
				"checkbox");
		for (int i = 0; i < stuIds.length; i++)
		{
			expertService.deleteByIdExpert(Integer.parseInt(stuIds[i]));
		}

		return "piliangDel";
	}

	public void setExpert(Expert expert)
	{
		this.expert = expert;
	}

	public void setExperts(List<Expert> experts)
	{
		this.experts = experts;
	}

	@Resource(name = "expertService")
	public void setExpertService(ExpertService expertService)
	{
		this.expertService = expertService;
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

	public void setPage(int page)
	{
		this.page = page;
	}

	public void setPageCount(int pageCount)
	{
		this.pageCount = pageCount;
	}

	public void setResearchCon(String researchCon)
	{
		this.researchCon = researchCon;
	}

	public void setResearchFields(String researchFields)
	{
		this.researchFields = researchFields;
	}

	public void setServletRequest(HttpServletRequest request)
	{
		this.request = request;

	}

	public void setWorkplace(String workplace)
	{
		this.workplace = workplace;
	}

	public void setWorkposition(String workposition)
	{
		this.workposition = workposition;
	}

	public String testSave()
	{
		for (int i = 0; i < 100; i++)
		{
			Expert expert = new Expert();
			expert.setName("����");
			expert.setMajorFields("����ӹ����̣����Ӷ������ʯѡ���պ͸�ѡ�����о� ");
			expert.setResearchFields("����ӹ�����");
			expert
					.setResearchCon("�������ҹ���һ���ؽ���������ĩúѡú������ơ��������豸��װ�����Ժ�Ͷ����ȫ���̣�ָ���о�������ҹ���һ̨ɸ�¿�������̭�����ڹ������״ν�����ɸ�����۳ɹ������ڽ����ʪϸ��ú�ĸɷ�ɸ�����⣬����Ч��ʮ�������������������ϵ�һ�������ؽ����������ɷ�ѡú�����������ڹ�������ˮƽ�����16�����ѡú��ᡰ����ɾͽ���");
			expert.setWorkposition("�й�����ԺԺʿ");
			expert.setWorkplace("�й���ҵ��ѧ");

			expertService.add(expert);
		}
		return "testSave";
	}

	public String update()
	{

		Expert expert = expertService.getExpert(id);

		expert.setName(getName().trim());
		expert.setMajorFields(getMajorFields().trim());

		expert.setResearchCon(getResearchCon().trim());
		expert.setResearchFields(getResearchFields().trim());
		expert.setWorkplace(getWorkplace().trim());
		expert.setWorkposition(getWorkposition().trim());
		expertService.updateExpert(expert);
		return "update";
	}
}
