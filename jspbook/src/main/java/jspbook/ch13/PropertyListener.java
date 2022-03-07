package jspbook.ch13;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class PropertyListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletContext ctx = sce.getServletContext();
    	String file = ctx.getInitParameter("profile");	//C:/tmp/my.conf
    	
    	Properties p = new Properties();	//지정된 경로의 파일로 property객체 생성
    	
    	try {
			p.load(new FileInputStream(file));	//파일을 한줄 한줄씩 읽어서 p에 담음.
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	ctx.setAttribute("prop", p); 	//파일의 내용이 application scope영역에 저장됨.
    }

    public void contextDestroyed(ServletContextEvent sce)  { 
       
    }
	
}
