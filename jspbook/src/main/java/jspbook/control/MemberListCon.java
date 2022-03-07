package jspbook.control;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MemberListCon.do")
public class MemberListCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}
	
	protected void reqProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//객체 생성
		MemberDAO mdao=new MemberDAO();
		
		//메서드 호출하여 return 값을 받음
		Vector<MemberDTO> v=mdao.allSelectMember();
		request.setAttribute("vec", v);
		
		//view로 던짐
	    RequestDispatcher dis=request.getRequestDispatcher("MemberList.jsp"); 
	    dis.forward(request, response);
	}

}
