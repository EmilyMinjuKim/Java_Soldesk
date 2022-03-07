package jspbook.MVC;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqProc(request, response);
	}

	protected void reqProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg = "Hello World";
		Integer data = 20220209;
		
		request.setAttribute("msg", msg);
		request.setAttribute("data", data);
		
		RequestDispatcher dis = request.getRequestDispatcher("HelloWorld.jsp");
		dis.forward(request, response);
	}
}
