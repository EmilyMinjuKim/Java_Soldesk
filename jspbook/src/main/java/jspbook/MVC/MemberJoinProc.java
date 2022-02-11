package jspbook.MVC;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MProc")
public class MemberJoinProc extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}
	
	protected void reqProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//요청 받기 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		//Model 객체 생성 
		MemberDTO dto = new MemberDTO();
		
		//Model에 저장
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setEmail(email);
		dto.setPhone(phone);
		
		//서버에 저장
		request.setAttribute("dto", dto);
		
		//RequestDispatcher : view영역으로 보내줌
		RequestDispatcher dis = request.getRequestDispatcher("MemberJoinView.jsp");
		dis.forward(request, response);
	}

}
