package jspbook.ch07;

@SuppressWarnings("unused")
public class LoginBean {
	
	private String userid;
	private String password;
	
	final String _userid="myuser";
	final String _password="12345";
	
	//로그인 계정 정보가 맞는지 확인하는 메서드
	public boolean checkUser() {
		
		if(userid.equals(_userid) && password.equals(_password)) {
			return true;
		}else {
			return false;
		}	
	}
		

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String get_userid() {
		return _userid;
	}

	public String get_password() {
		return _password;
	}
	
	
	

}
