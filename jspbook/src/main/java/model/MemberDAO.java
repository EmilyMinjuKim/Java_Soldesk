package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {

	//오라클 접속 소스
	String url="jdbc:oracle:thin:@192.168.55.182:1521:xe";
	String user="system";
	String password="1234";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//DB 연동 메소드
	public void getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	//1. insert into ... create
	public void insertMember(MemberDBVo mbean) {
		try {
			//연결 메소드 호출
			getCon();
			
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPw());
			pstmt.setString(3, mbean.getPw2());
			pstmt.setString(4, mbean.getEmail());
			pstmt.setString(5, mbean.getGender());
			pstmt.setString(6, mbean.getAddress());
			pstmt.setString(7, mbean.getTel());
			pstmt.setString(8, mbean.getInterest());
			pstmt.setString(9, mbean.getJob());
			pstmt.setString(10, mbean.getAge());
			pstmt.setString(11, mbean.getInfo());
			
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	
	//-------------------------------------------------------------------
	//2. select from ... read
		public Vector<MemberDBVo> allselectMember() {
			
			Vector<MemberDBVo> v = new Vector<MemberDBVo>();
			
			try {
				getCon();
				String sql = "select * from member";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();	//오라클에 저장되어있는 회원들의 정보가 모두 담겨있음. 
				
				while(rs.next()) {
					MemberDBVo bean = new MemberDBVo();
					bean.setId(rs.getString(1));
					bean.setPw(rs.getString(2));
					bean.setPw2(rs.getString(3));
					bean.setEmail(rs.getString(4));
					bean.setGender(rs.getString(5));
					bean.setAddress(rs.getString(6));
					bean.setTel(rs.getString(7));
					bean.setInterest(rs.getString(8));
					bean.setJob(rs.getString(9));
					bean.setAge(rs.getString(10));
					bean.setInfo(rs.getString(11));
					
					v.add(bean);
				}
				con.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return v;
		}
		
		
		
		//-------------------------------------------------------------------
		//상세 정보
		public MemberDBVo selectMember(String id) {
			MemberDBVo bean = new MemberDBVo();
			
			try {
				getCon();
				String sql = "select * from member where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					bean.setId(rs.getString(1));
					bean.setPw(rs.getString(2));
					bean.setPw2(rs.getString(3));
					bean.setEmail(rs.getString(4));
					bean.setGender(rs.getString(5));
					bean.setAddress(rs.getString(6));
					bean.setTel(rs.getString(7));
					bean.setInterest(rs.getString(8));
					bean.setJob(rs.getString(9));
					bean.setAge(rs.getString(10));
					bean.setInfo(rs.getString(11));
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return bean;
	
		}
		
		
		
		//-------------------------------------------------------------------
		//비밀번호 확인 메서드
		public String getPass(String id) {
			
			String pw = "";
			try {
				getCon();
				String sql = "select pw from member where id = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					pw = rs.getString(1);	//pw값이 저장된 인덱스 컬럼
				}
				
				con.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return pw;
		}
		
		
		
		//-------------------------------------------------------------------
		//3. update set ... Update
		public void updateMember(MemberDBVo bean) {
			try {
				getCon();
				String sql = "update member set email=?, tel=?, address=? where id=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, bean.getEmail());
				pstmt.setString(2, bean.getTel());
				pstmt.setString(3, bean.getAddress());
				pstmt.setString(4, bean.getId());
				
				pstmt.executeQuery();
				
				con.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		//-------------------------------------------------------------------
		//4. delete from ... Delete
		public void deleteMember(String id) {
			try {
				getCon();
				System.out.println("삭제 쿼리문 시작...");
				String sql = "delete from member where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeQuery();
				System.out.println("삭제 쿼리 완료...");
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
}
