package jspbook.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/proc.do")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}
	
	protected void reqProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String pass1=request.getParameter("pass1");
		String pass2=request.getParameter("pass2");
		String[] hobby = request.getParameterValues("hobby");
		String data="";
		for(String hb:hobby) {
			data += hb + " ";
		}
		
		MemberDTO bean = new MemberDTO();
		
		bean.setId(request.getParameter("id"));
		bean.setPass1(request.getParameter("pass1"));
		bean.setPass2(request.getParameter("pass2"));
		bean.setEmail(request.getParameter("email"));
		bean.setGender(request.getParameter("gender"));
		bean.setAddress(request.getParameter("address"));
		bean.setPhone(request.getParameter("phone"));
		bean.setHobby(data);
		bean.setJob(request.getParameter("job"));
		bean.setAge(request.getParameter("age"));
		bean.setInfo(request.getParameter("info"));
		
		//패스워드 일치 판단
		if(pass1.equals(pass2)) {
			MemberDAO mdao=new MemberDAO();
			mdao.insertMember(bean);
			
			//RequestDispatcher : view영역으로 던짐
			RequestDispatcher dis=request.getRequestDispatcher("MemberListCon.do");
			dis.forward(request, response);
			
		}else {	
			request.setAttribute("msg", "패스워드가 일치하지 않습니다");
			RequestDispatcher dis=request.getRequestDispatcher("JoinError.jsp");
			dis.forward(request, response);
		}

	}

}
