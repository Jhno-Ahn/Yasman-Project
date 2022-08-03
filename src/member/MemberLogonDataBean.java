package member;

import java.sql.Timestamp;

public class MemberLogonDataBean {
	private int member_num;
	private String id;
	private String member_name;
	private String nick_name;
	private String passwd;
	private String member_addr;
	private String member_tel;
	private String reg_num;
	private Timestamp member_reg_date;
	private int my_match_num_first;
	private int my_match_num_second;
	private int my_match_num_third;
	
	
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
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
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
	public int getMy_match_num_first() {
		return my_match_num_first;
	}
	public void setMy_match_num_first(int my_match_num_first) {
		this.my_match_num_first = my_match_num_first;
	}
	public int getMy_match_num_second() {
		return my_match_num_second;
	}
	public void setMy_match_num_second(int my_match_num_second) {
		this.my_match_num_second = my_match_num_second;
	}
	public int getMy_match_num_third() {
		return my_match_num_third;
	}
	public void setMy_match_num_third(int my_match_num_third) {
		this.my_match_num_third = my_match_num_third;
	}
	
	
}
// DTO 저장빈