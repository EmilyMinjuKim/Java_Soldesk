package jspbook.ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank1Bean {
	private int aid;
	private String aname;
	private int balance;
	
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	
	//JNDI
	public void connect() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/xe");
			
			con = ds.getConnection();
			System.out.println("connection success...");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//-----------------------------------------------------------------------------
	public void disconnect() {
		try {
			if(con!=null) {
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("connection close...");
	}
	
	//-----------------------------------------------------------------------------
	public void getData() {
		connect();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank1");
			rs.next();
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(aid+". "+aname+" : " +balance+" --> 에러 발생...");
		} finally {
			disconnect();
		}
	}
	
	//-----------------------------------------------------------------------------
	public boolean transfer(int bal) {
		
		connect();
		
		try {
			con.setAutoCommit(false); 	//AutoCommit 해제
			
			pstmt = con.prepareStatement("update bank1 set balance=balance-? where aid=101");
			pstmt.setInt(1, bal);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement("update bank2 set balance=balance+? where aid=201");
			pstmt.setInt(1, bal);
			pstmt.executeUpdate();
			
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank2 where aid=201");
			
			rs.next();
			if(rs.getInt(1) > 100) {
				con.rollback();
				return false;
			} else {
				con.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return true;
	}

	//-----------------------------------------------------------------------------
	public int getAid() {
		return aid;
	}

	public String getAname() {
		return aname;
	}

	public int getBalance() {
		return balance;
	}
	
}
