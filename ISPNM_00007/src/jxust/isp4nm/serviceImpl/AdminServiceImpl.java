package jxust.isp4nm.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;


import jxust.isp4nm.dao.AdminDao;
import jxust.isp4nm.model.Admin;
import jxust.isp4nm.service.AdminService;

@Component("adminService")
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminDao adminDao;
	public Admin queryByName(String name) {
		
		return adminDao.queryByName(name);
	}

}
