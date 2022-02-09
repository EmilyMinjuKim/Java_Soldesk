package jspbook.addrbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AddrBean {
	
	Connection conn=null;
	Statement stmt=null;
	PreparedStatement pstmt=null;
	
	//JNDI
	public void connect() {
		try {
			 //JNDI
			  Context initContext=new InitialContext();
			  Context envContext=(Context)initContext.lookup("java:/comp/env");
			  DataSource ds=(DataSource)envContext.lookup("jdbc/xe");
			  //연결 완료
			  conn=ds.getConnection();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//================================================================
	public void disconnect() {
		
		try {
			if(conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("close");
	}
	//================================================================
	//Update
	public boolean updateDB(AddrBook addrbook) {
		connect();
		
		String sql="update addrbook set ab_name=?, ab_email=?, ab_comdept=?, ab_birth=?, ab_tel=?, ab_memo=? where ab_id=?";
		
		try {
			
			pstmt=conn.prepareStatement(sql);
			//매핑
			pstmt.setString(1, addrbook.getAb_name());
			pstmt.setString(2, addrbook.getAb_email());
			pstmt.setString(3, addrbook.getAb_comdept());
			pstmt.setString(4, addrbook.getAb_birth());
			pstmt.setString(5, addrbook.getAb_tel());
			pstmt.setString(6, addrbook.getAb_memo());
			pstmt.setInt(7, addrbook.getAb_id());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		
		return true;
	}
	
	//======================================================================================================================
	public boolean deleteDB(int gb_id) {
		connect();
		
		String sql="delete from addrbook where ab_id=?";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		
		return true;
	}
	//======================================================================================================================
	public boolean insertDB(AddrBook addrbook) {
		
		connect();
		
		String sql="insert into addrbook(ab_id, ab_name, ab_email, ab_comdept, ab_birth, ab_tel, ab_memo) values(?,?,?,?,?,?,?)";
try {
			
			pstmt = conn.prepareStatement(sql);
			
			//매핑
			pstmt.setInt(1, addrbook.getAb_id());
			pstmt.setString(2, addrbook.getAb_name());
			pstmt.setString(3, addrbook.getAb_email());
			pstmt.setString(4, addrbook.getAb_comdept());
			pstmt.setString(5, addrbook.getAb_birth());
			pstmt.setString(6, addrbook.getAb_tel());
			pstmt.setString(7, addrbook.getAb_memo());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	//==========================================================================================================================
	//상세 페이지
	public AddrBook getDB(int gb_id) {
		connect();
		
		String sql="select * from addrbook where ab_id=?";
		AddrBook addrbook=new AddrBook();
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gb_id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			
			addrbook.setAb_id(rs.getInt("ab_id"));
			addrbook.setAb_name(rs.getString("ab_name"));
			addrbook.setAb_email(rs.getString("ab_email"));
			addrbook.setAb_birth(rs.getString("ab_birth"));
			addrbook.setAb_tel(rs.getString("ab_tel"));
			addrbook.setAb_comdept(rs.getString("ab_comdept"));
			addrbook.setAb_memo(rs.getString("ab_memo"));
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		finally {
			disconnect();
		}
		
		return addrbook;
	}
	
	//==========================================================================================================================
	//주소록 목록(전체)
	public  ArrayList<AddrBook> getDBList() {
		connect();
		
		String sql="select * from addrbook order by ab_id ";
		ArrayList<AddrBook> datas= new ArrayList<AddrBook>();
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				AddrBook addrbook=new AddrBook();
				
				addrbook.setAb_id(rs.getInt("ab_id"));
				addrbook.setAb_name(rs.getString("ab_name"));
				addrbook.setAb_email(rs.getString("ab_email"));
				addrbook.setAb_birth(rs.getString("ab_birth"));
				addrbook.setAb_tel(rs.getString("ab_tel"));
				addrbook.setAb_comdept(rs.getString("ab_comdept"));
				addrbook.setAb_memo(rs.getString("ab_memo"));
				datas.add(addrbook);
			}
			rs.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		finally {
			disconnect();
		}
		return datas;
	}
	
	
	
	
}
