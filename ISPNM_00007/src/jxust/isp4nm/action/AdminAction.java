package jxust.isp4nm.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import jxust.isp4nm.model.Admin;
import jxust.isp4nm.service.AdminService;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("adminAction")
@Scope("prototype")
public class AdminAction extends ActionSupport {
	
	@Resource
	private AdminService adminService;
	
	private Admin admin;
	private String password;
	private String username;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	@SuppressWarnings("unchecked")
	public String login(){
		this.admin = this.adminService.queryByName(username);
		if(this.admin == null){
			this.addFieldError("error", "用户名不存在！");
			return ERROR;
		}
		else{
			if(admin.getAdminpassword().equals(password)){
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("admin", admin.getAdminname()+"已登录!");
				return SUCCESS;
			}
			else{
				this.addFieldError("error", "密码不正确！");
				return ERROR;
			}
		}
		
	}
}
