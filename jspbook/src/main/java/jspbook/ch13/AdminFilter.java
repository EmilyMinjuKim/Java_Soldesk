package jspbook.ch13;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

@WebFilter("/ch13/admin/*")
public class AdminFilter extends HttpFilter implements Filter {
	
	Properties p;

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		p = (Properties)request.getServletContext().getAttribute("prop");
		//prop객체는 file이므로 반드시 Properties의 객체가 읽어줘야 함.
		p.put("adminId", "SuperUser");	//파일에 내용을 추가하여 사용.
		
		//otp번호(인증번호)
		request.setAttribute("otp", "a493906");
		
		//필터 적용 대상 : /ch13/admin/*의 request, response 작동시 기능 사용.
		chain.doFilter(request, response);		
	}

}
