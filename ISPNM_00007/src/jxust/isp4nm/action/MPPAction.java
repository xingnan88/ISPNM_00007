package jxust.isp4nm.action;


import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import jxust.isp4nm.model.MPP;
import jxust.isp4nm.service.MPPService;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("mppAction")
@Scope("prototype")
public class MPPAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6971447549964497048L;
	//private static SimpleDateFormat fileFormatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");		
	private MPP mpp;
	private List<MPP> lists;
	
	@Resource
	private MPPService mppService;
	
	public MPP getMpp() {
		return mpp;
	}

	public void setMpp(MPP mpp) {
		this.mpp = mpp;
	}
	
	
	public List<MPP> getLists() {
		return lists;
	}

	public void setLists(List<MPP> lists) {
		this.lists = lists;
	}

	public String add(){
		if(mpp.getFfname().equals("")){
			this.addFieldError("error", "方法名不能为空！");
			return ERROR;
		}
		
		mpp.setTime(new Date());
		mppService.add(mpp);
		return SUCCESS;
		
	}
	public String findAll(){
		lists = mppService.findAll();
		return SUCCESS;
	}
	
	public String update(){
		mpp.setTime(new Date());
		mppService.update(mpp);
		return SUCCESS;
	}
	public String delete(){
		if(this.mpp == null){
			this.addFieldError("error", "该采矿方法不存在！");
			return ERROR;
		}
		mppService.remove(mpp);
		return SUCCESS;
	}
	public String findById(){
		this.mpp = mppService.findById(mpp.getId());
		if(this.mpp == null){
			this.addFieldError("error", "该采矿方法不存在！");
			return ERROR;
		}
		return SUCCESS;
	}
	public String playById(){
		this.mpp = mppService.findById(mpp.getId());
		if(this.mpp == null){
			this.addFieldError("error", "该采矿方法不存在！");
			return ERROR;
		}
		int count = mpp.getCounts()+1;
		mpp.setCounts(count);
		mppService.update(mpp);
		return SUCCESS;
	}
}
