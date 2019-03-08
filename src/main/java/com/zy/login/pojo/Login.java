package com.zy.login.pojo;

public class Login {
	
	private Integer lid;
	private String  lusername;
	private String  lpassword;
	public Integer getLid() {
		return lid;
	}
	public void setLid(Integer lid) {
		this.lid = lid;
	}
	public String getLusername() {
		return lusername;
	}
	public void setLusername(String lusername) {
		this.lusername = lusername;
	}
	public String getLpassword() {
		return lpassword;
	}
	public void setLpassword(String lpassword) {
		this.lpassword = lpassword;
	}
	public Login(Integer lid, String lusername, String lpassword) {
		super();
		this.lid = lid;
		this.lusername = lusername;
		this.lpassword = lpassword;
	}
	public Login() {
		super();
	}
	@Override
	public String toString() {
		return "Login [lid=" + lid + ", lusername=" + lusername + ", lpassword=" + lpassword + "]";
	}
	
	
}
