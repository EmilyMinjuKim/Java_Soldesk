package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet2")
public class CalcServlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int num1, num2;
		String op;
		int result;
		
		//클라이언트 응답시 전달될 컨텐트에 대한 타입 선언 
		res.setContentType("text/html; charset=UTF-8");

		num1 = Integer.parseInt(req.getParameter("num1"));
		num2 = Integer.parseInt(req.getParameter("num2"));
		op = req.getParameter("operator");
		
		//Calc클래스에서 구현부 가져오기
		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();
		
		//클라이언트 응답을 위한 출력 스트림
		PrintWriter out = res.getWriter();
		
		//뷰 만들기
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><CENTER>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</CENTER></BODY></HTML>");
	}

}
