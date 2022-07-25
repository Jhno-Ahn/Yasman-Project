package member;

import java.sql.Timestamp;

public class MemberLogonDataBean {
	private int member_num;
	private String id;
	private String member_name;
	private String nick_name;
	private String passwd;
	private String member_tel;
	private String reg_num;
	private Timestamp member_reg_date;
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getReg_num() {
		return reg_num;
	}
	public void setReg_num(String reg_num) {
		this.reg_num = reg_num;
	}
	public Timestamp getMember_reg_date() {
		return member_reg_date;
	}
	public void setMember_reg_date(Timestamp member_reg_date) {
		this.member_reg_date = member_reg_date;
	}
	
	
}
// DTO 저장빈