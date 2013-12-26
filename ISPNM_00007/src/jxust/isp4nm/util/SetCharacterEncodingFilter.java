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

	// ��Ϊ���������д�˸����������������Լ�дĬ��gb2312����ʹ�õ���GBK

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
