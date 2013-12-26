package jxust.isp4nm.util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class SetCharacterEncodingFilter implements Filter {

	// 因为编码的问题写了个过滤器参数可以自己写默认gb2312这里使用的是GBK

	protected FilterConfig filterConfig;
	private String targetEncoding = "utf-8";

	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest srequest, ServletResponse sresponse,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) srequest;
		request.setCharacterEncoding(targetEncoding);
		chain.doFilter(request, sresponse);
	}

	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;
		this.targetEncoding = config.getInitParameter("encoding");
	}

	public void setFilterConfig(FilterConfig filterConfig) {
		this.filterConfig = filterConfig;
	}

}
