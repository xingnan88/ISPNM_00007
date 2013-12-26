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
	 * ����һ�������б�ʱ�����ȸ�����һ�ε�״ֵ̬
	 * һЩ������᷵�ص����չ��ҳ����Ҫ��ԭ�ϴε�״̬
	 * ����������֮���ٵ����ҳ�������ҳ��Ҫ���������������ı��״̬
	 * �ٵ�����Ҫ��������״̬����������ҳ����������״̬���÷����Ὣ��Щ״̬
	 * ���浽session�У���������Ҫ�г����ʱ��������״̬
	 */
	@SuppressWarnings("unchecked")
	private void updateStatus() {
		Object tmp = request.getSession().getAttribute(ANIME_STATUS);//��session�л�ȡ״̬����
		if(tmp != null) status = (Status)tmp;

		Enumeration<String> pn = request.getParameterNames();//��ȡURL�Ĳ���
		List<String> parameterNames = new ArrayList<String>();
		while(pn.hasMoreElements()) {
			parameterNames.add(pn.nextElement());
		}
		
		
		
		if(parameterNames.size() == 0) status.remove(); //���URL��û�в�����״ֵ̬ȫ�����
		
		try {
			
			/*
			 *���������ؼ������Ե�״̬ 
			 */
			String keyword = (String)status.get(Table.class.getMethod("getKeyword"));
			if(parameterNames.contains("table.keyword")) {//�������true���ʾ��������Ҫ����
				status.remove();//����ǰ�Ƚ�����״̬���
				status.save(Table.class.getMethod("getKeyword"), table.getKeyword());//����״ֵ̬
			} else {//��������Ҫ����
				
				//�����״̬������ȡ��״ֵ̬��Ϊ������µ������ϣ���ԭ��һ�ε�״̬
				if(keyword != null) table.setKeyword(keyword);
			}
			
			/*
			 *�����������Ե�״̬ 
			 */
			String sortProperty = (String)status.get(Table.class.getMethod("getSortProperty"));
			String sortOrient = (String)status.get(Table.class.getMethod("getSortOrient"));
			if(parameterNames.contains("table.sortProperty")) {//Ϊtrue��ʾ��������Ҫ����
				//����״ֵ̬
				status.save(Table.class.getMethod("getSortProperty"), table.getSortProperty());
				status.save(Table.class.getMethod("getSortOrient"), table.getSortOrient());
			} else {//����Ҫ����
				if(sortProperty != null) {//��Ϊ����ԭ��һ�ε�״̬
					table.setSortProperty(sortProperty);
					table.setSortOrient(sortOrient);
				}
			}
			
			
			/*
			 * ���·�ҳ״̬
			 */
			Integer offset = (Integer)status.get(Pager.class.getMethod("getOffset"));
			if(parameterNames.contains("pager.offset")) {//������Ϊ����˷�ҳҳ��
				status.save(Pager.class.getMethod("getOffset"), pager.getOffset());//����״̬
			} else {
				if(offset != null) pager.setOffset(offset);//��ԭ��һ�ε�״̬
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
