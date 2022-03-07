package jspbook.ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestContestListener implements ServletContextListener {

	//시작 이벤트
    public void contextInitialized(ServletContextEvent sce)  { 
        ServletContext ctx = sce.getServletContext();
        Book mybook = new Book("Spring Framework", "홍길동", 25000, "솔데스크");
        ctx.setAttribute("mybook", mybook);
        
        System.out.println("TestContextListener가 실행 중");
    }
	
    //종료 이벤트
    public void contextDestroyed(ServletContextEvent sce)  { 
         
    }
}
