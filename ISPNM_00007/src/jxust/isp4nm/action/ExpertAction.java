package jxust.isp4nm.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import jxust.isp4nm.model.Expert;
import jxust.isp4nm.service.ExpertService;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("expertAction")
@Scope("prototype")
public class ExpertAction extends ActionSupport implements ServletRequestAware

{
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private int pageCount;// 总的页面数
	private int page;// 当前的页面
	private Expert expert;
	private int id;
	private String name;

	private List<Expert> experts;

	private ExpertService expertService;

	private String researchFields;
	

	public String find() throws Exception
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
		request.setAttribute("page", page);

		String sql = "";
		if(researchFields.equals(new String(researchFields.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			researchFields = new String(researchFields.getBytes("ISO-8859-1"),"GBK");
		}
		if(name.equals(new String(name.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			name = new String(name.getBytes("ISO-8859-1"),"GBK");
		}
		if (researchFields.equals("研究领域")) {
			if("".equals(name) || name == null) {
				sql = "from Expert ";
			}else {
				sql = "from Expert where  name like '%" + name + "%'";
			}
		} else 
		{
			if("".equals(name) || name == null) {
				sql = "from Expert where researchFields='" + researchFields + "'";
			} else {
				sql = "from Expert where researchFields='" + researchFields + "'"
					+ "  and name like '%" + name + "%'";
			}
		}

		try
		{
			experts = expertService.find1(sql, getPage());
			if (experts.size() == 0)
			{
				return "no";
			}
			for (int i = 0; i < experts.size(); i++)
			{
				Expert expert = experts.get(i);
				if (!getName().equals(""))
				{
					String name = expert.getName().replace(getName(),
							"<font color=\"#FF0000\">" + getName() + "</font>");
					expert.setName(name);
				}

			}
			request.setAttribute("researchFields", researchFields);

		} catch (Exception e)
		{
			return INPUT;
		}
		return "find";
	}

	public String findAll()
	{
		return "findAll";
	}

	public String findByField() throws UnsupportedEncodingException
	{  
		String researchFields=new String(request.getParameter("researchFields").getBytes("ISO-8859-1"),"GB2312");
		
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
	
		if (researchFields.equals("采矿工程"))
		{   
			 System.out.println("huanying");
			 System.out.println(researchFields);

			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				System.out.println(researchFields);
				
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);

			} catch (Exception e)
			{
				return INPUT;
			}

		}
		if (researchFields.equals("安全与环境工程"))
		{
			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);
			} catch (Exception e)
			{
				return INPUT;
			}

		}
		if (researchFields.equals("矿物加工工程"))
		{
			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);
			} catch (Exception e)
			{
				return INPUT;
			}

		}
		if (researchFields.equals("冶金工程"))
		{
			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);
			} catch (Exception e)
			{
				return INPUT;
			}

		}
		if (researchFields.equals("材料工程"))
		{
			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);
			} catch (Exception e)
			{
				return INPUT;
			}

		}
		if (researchFields.equals("矿冶设备工程"))
		{
			try
			{
				experts = expertService.findByResearchFieldsAll(researchFields,
						page);
				if (experts.size() == 0)
				{
					return "no";
				}
				request.setAttribute("researchFields", researchFields);
			} catch (Exception e)
			{
				return INPUT;
			}

		}

		return "findByField";
	}

	public String findById()
	{
		expert = expertService.findByIdExpert(id);
		return "findById";
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

	public int getfind() throws Exception
	{
		if(researchFields.equals(new String(researchFields.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			researchFields = new String(researchFields.getBytes("ISO-8859-1"),"GBK");
		}
		if(name.equals(new String(name.getBytes("ISO-8859-1"), "ISO-8859-1"))){
			name = new String(name.getBytes("ISO-8859-1"),"GBK");
		}
		int count = expertService.getRows(researchFields, name);

		if (count % 30 == 0)
		{
			pageCount = count / 30;
		} else
		{
			pageCount = count / 30 + 1;
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

	public String getResearchFields()
	{
		return researchFields;
	}

	public int getRowsPage() throws UnsupportedEncodingException
	{   
		String researchFields=new String(request.getParameter("researchFields").getBytes("ISO-8859-1"),"GB2312");
		int count = expertService.getRows(researchFields);
		if (count % 30 == 0)
		{
			pageCount = count / 30;
		} else
		{
			pageCount = count / 30 + 1;
		}
		request.setAttribute("pageCount", pageCount);
		return pageCount;
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

	public void setResearchFields(String researchFields)
	{
		this.researchFields = researchFields;
	}

	public void setServletRequest(HttpServletRequest request)
	{
		this.request = request;
	}
}
