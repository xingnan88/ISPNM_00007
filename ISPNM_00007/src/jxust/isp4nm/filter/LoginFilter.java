package jxust.isp4nm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginFilter  implements Filter {
		

	public void init(FilterConfig arg0) throws ServletException {
	
	}
	
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)arg0;
		HttpSession session = req.getSession();
		if(session.getAttribute("admin") != null ){
			arg2.doFilter(arg0, arg1);
		}
		else{
			req.getRequestDispatcher("login.jsp").forward(arg0, arg1);
		}
			
		
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
