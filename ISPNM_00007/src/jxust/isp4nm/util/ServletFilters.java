package jxust.isp4nm.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class ServletFilters implements Filter {
	private List<String> initParameters = new ArrayList<String>();

	public void destroy() {
		System.out.println("ServletFilters destroied!");
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		String target = request.getRequestURI();
		System.out.println("1: " + target);
		target = target.lastIndexOf("?") > 0 ? target.substring(target
				.lastIndexOf("/") + 1, target.lastIndexOf("?")
				- target.lastIndexOf("/")) : target.substring(target
				.lastIndexOf("/") + 1);
		System.out.println("2:" + target);
		if (this.initParameters.contains(target)) {
			RequestDispatcher rdsp = request.getRequestDispatcher(target);
			rdsp.forward(req, resp);// 转发我们的请求，跳出FilterChain
		} else
			chain.doFilter(req, resp);
	}

	public void init(FilterConfig config) throws ServletException {
		String parameters = config.getInitParameter("includeServlets");
		System.out.println("************" + config.getFilterName()
				+ " initing with value " + parameters + "********************");
		this.initParameters.addAll(Arrays.asList(parameters.split(",")));
	}
}