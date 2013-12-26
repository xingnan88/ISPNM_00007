package jxust.isp4nm.action;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.model.Standard;
import jxust.isp4nm.service.StandardService;
import jxust.isp4nm.util.Pager;
import jxust.isp4nm.util.Status;
import jxust.isp4nm.util.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component
@Scope("prototype")
public class StandardAction extends MessageAction {

	private static final long serialVersionUID = 2039507937518390445L;
	
	public static final String ANIME_STATUS = "standard_status";
	
	private Status status = new Status();
	
	private StandardService standardService;
	
	private Table<Standard> table = new Table<Standard>();
	
	private Standard standard;
	
	private List<Standard> standards = new ArrayList<Standard>(1);
	
	private Pager pager = new Pager();

	public Table<Standard> getTable() {
		return table;
	}

	public void setTable(Table<Standard> table) {
		this.table = table;
	}

	public Standard getStandard() {
		return standard;
	}

	public void setStandard(Standard standard) {
		this.standard = standard;
	}

	public List<Standard> getStandards() {
		return standards;
	}

	public void setStandards(List<Standard> standards) {
		this.standards = standards;
	}

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}


	
	public String add() {
		standardService.add(standard);
		gotoAction("standardAction", "list");
		return ACTION_REDIRECT;
	}
	
	
	public String delete() {
		standardService.delete(standards);
		gotoAction("standardAction", "list");
		return ACTION_REDIRECT;
	}
	
	
	public String updateInput() {
		standard = standardService.get(standard.getId());
		setUrl("/back/standard/standard_updateInput.jsp");
		return SUCCESS;
	}
	
	
	public String showDetail() {
		standardService.update(standard);
		gotoAction("standardAction", "list");
		return ACTION_REDIRECT;
	}
	
	public String showDetailInput() {
		standard = standardService.get(standard.getId());
		setUrl("/back/standard/standard_showDetailInput.jsp");
		return SUCCESS;
	}
	public String showDetailInput1() {
		standard = standardService.get(standard.getId());
		setUrl("/front/standard/standard_showDetailInput.jsp");
		return SUCCESS;
	}
	public String showDetailInput2() {
		standard = standardService.get(standard.getId());
		//setUrl("/standard/front/standard_showDetailInput2.jsp");
		setUrl("/front/standard/standard_showDetailInput2.jsp");
		return SUCCESS;
	}
	
	
	public String update() {
		standardService.update(standard);
		gotoAction("standardAction", "list");
		return ACTION_REDIRECT;
	}
	
	
	public String list() {
		updateStatus();
		pager.setItems(table.getKeyword().equals("") ? standardService.count() : standardService.count(table.getKeyword()));
		standards = standardService.search(table.getKeyword(), table.getSortProperty(), 
				Table.ASC.equals(table.getSortOrient()), pager.getOffset(), pager.getMaxPageItems());
		table.setList(standards);
		setUrl("/back/standard/standard_list.jsp");
		return SUCCESS;
	}
	
	public String list1() {
		updateStatus();
		pager.setItems(table.getKeyword().equals("") ? standardService.count() : standardService.count(table.getKeyword()));
		standards = standardService.search(table.getKeyword(), table.getSortProperty(), 
				Table.ASC.equals(table.getSortOrient()), pager.getOffset(), pager.getMaxPageItems());
		table.setList(standards);
		setUrl("/front/standard/standard_list1.jsp");
		return SUCCESS;
	}
	
	public String list2() {
		updateStatus();
		pager.setItems(table.getKeyword().equals("") ? standardService.count() : standardService.count(table.getKeyword()));
		standards = standardService.search(table.getKeyword(), table.getSortProperty(), 
				Table.ASC.equals(table.getSortOrient()), pager.getOffset(), pager.getMaxPageItems());
		table.setList(standards);
		setUrl("/front/standard/standard_list2.jsp");
		return SUCCESS;
	}
	
	
	/**
	 * 返回一个数据列表时，首先更新上一次的状态值
	 * 一些操作后会返回到表格展现页，并要还原上次的状态
	 * 比如搜索了之后再点击分页，点击分页后，要继续保持已搜索的表格状态
	 * 再点排序，要保持三种状态，搜索，分页和排序三种状态，该方法会将这些状态
	 * 保存到session中，当请求需要列出表格时，更新其状态
	 */
	@SuppressWarnings("unchecked")
	private void updateStatus() {
		Object tmp = request.getSession().getAttribute(ANIME_STATUS);//从session中获取状态对象
		if(tmp != null) status = (Status)tmp;

		Enumeration<String> pn = request.getParameterNames();//获取URL的参数
		List<String> parameterNames = new ArrayList<String>();
		while(pn.hasMoreElements()) {
			parameterNames.add(pn.nextElement());
		}
		
		
		
		if(parameterNames.size() == 0) status.remove(); //如果URL中没有参数则将状态值全部清空
		
		try {
			
			/*
			 *更新搜索关键字属性的状态 
			 */
			String keyword = (String)status.get(Table.class.getMethod("getKeyword"));
			if(parameterNames.contains("table.keyword")) {//如果返回true则表示该请求需要搜索
				status.remove();//搜索前先将其他状态清除
				status.save(Table.class.getMethod("getKeyword"), table.getKeyword());//更新状态值
			} else {//该请求不需要搜索
				
				//如果从状态容器获取的状态值不为空则更新到属性上，还原上一次的状态
				if(keyword != null) table.setKeyword(keyword);
			}
			
			/*
			 *更新排序属性的状态 
			 */
			String sortProperty = (String)status.get(Table.class.getMethod("getSortProperty"));
			String sortOrient = (String)status.get(Table.class.getMethod("getSortOrient"));
			if(parameterNames.contains("table.sortProperty")) {//为true表示该请求需要排序
				//更新状态值
				status.save(Table.class.getMethod("getSortProperty"), table.getSortProperty());
				status.save(Table.class.getMethod("getSortOrient"), table.getSortOrient());
			} else {//不需要排序
				if(sortProperty != null) {//不为空则还原上一次的状态
					table.setSortProperty(sortProperty);
					table.setSortOrient(sortOrient);
				}
			}
			
			
			/*
			 * 更新分页状态
			 */
			Integer offset = (Integer)status.get(Pager.class.getMethod("getOffset"));
			if(parameterNames.contains("pager.offset")) {//该请求为点击了分页页码
				status.save(Pager.class.getMethod("getOffset"), pager.getOffset());//更新状态
			} else {
				if(offset != null) pager.setOffset(offset);//还原上一次的状态
			}
			
			request.getSession().setAttribute(ANIME_STATUS, status);
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
	}

	public StandardService getStandardService() {
		return standardService;
	}
	@Resource
	public void setStandardService(StandardService standardService) {
		this.standardService = standardService;
	}

}
