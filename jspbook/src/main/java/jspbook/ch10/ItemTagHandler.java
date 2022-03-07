package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//커스텀 태그에서 사용하는 자바 구현부(핸들러) 
public class ItemTagHandler extends SimpleTagSupport{
	private String border;
	private String bgcolor;
	
	public String getBorder() {
		return border;
	}
	public void setBorder(String border) {
		this.border = border;
	}
	public String getBgcolor() {
		return bgcolor;
	}
	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		JspFragment body = getJspBody();
		
		Product product = new Product();
		
		StringBuffer msg = new StringBuffer();
		if(body != null) {
			out.println("<h2>");
			body.invoke(null);
			out.println("</h2>");
		}
		msg.append("<table border=").append(border).append(" bgcolor=").append(bgcolor).append(" width=150>");
		out.println(msg.toString());
		
		for(String item : product.getProductList()) {
			out.println("<tr><td>" + item + "</td></tr>");
		}
		out.println("</table>");
	}
	
	
}

