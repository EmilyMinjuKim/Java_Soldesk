package jspbook.ch11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * servlet-api 라이브러리를 가져와서 사용할 수 있게 해주는 annotation으로 tomcat server에게 
 * Listener 클래스임을 알려줌.
 * 웹어플리케이션 시작, 종료, 기본 설정 등의 이벤트를 구현하는 부분.
 */
@WebListener
public class InitialMember implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletContext context = sce.getServletContext();
    	
    	ArrayList<Member> datas = new ArrayList<Member>();
    	for(int i = 0; i < 8; i++) {
    		Member data = new Member("솔데스크"+i, "sol"+i+"@soldesk.com");
    		datas.add(data);
    	}
    	
    	datas.add(new Member("홍길동", null));
    	datas.add(new Member("장길동", null));
    	
    	//어느 class에서나 사용할 수 있게 서버에 올려두는 것. 
    	context.setAttribute("members", datas);
    	context.setAttribute("member", new Member());
    }
	
    public void contextDestroyed(ServletContextEvent sce)  { 
        
    }
}
