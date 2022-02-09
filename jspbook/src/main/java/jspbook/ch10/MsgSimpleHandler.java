package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//커스텀 태그에서 사용하는 자바 구현부(핸들러) 
public class MsgSimpleHandler extends SimpleTagSupport{

	@Override
	public void doTag() throws IOException {
		JspWriter out = getJspContext().getOut();
		out.println("커스텀 태그 메세지 출력 : Hello");
	}

}
