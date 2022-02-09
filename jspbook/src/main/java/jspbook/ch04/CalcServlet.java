package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
    public CalcServlet() {
        super();	//상위 클래스의 기본 생성자
        
    }

    //Get방식의 요청이 있을시 처리하는 메서드 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	//Post 요청을 처리하기 위한 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1, num2;
		String op;
		int result;
		
		//클라이언트 응답시 전달될 컨텐트에 대한 타입 선언 
		response.setContentType("text/html; charset=UTF-8");

		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		result = calc(num1, num2, op);	
		
		//클라이언트 응답을 위한 출력 스트림
		PrintWriter out = response.getWriter();
		
		//뷰 만들기
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><CENTER>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</CENTER></BODY></HTML>");
	}
	
	
	public int calc(int num1, int num2, String op) {
		int result = 0;
		
		switch(op){
		case "+":
			result = num1 + num2;
			break;
		case "-":
			result = num1 - num2;
			break;
		case "*":
			result = num1 * num2;
			break;
		case "/":
			result = num1 / num2;
			break;
		}
		
		return result;
	}

}
