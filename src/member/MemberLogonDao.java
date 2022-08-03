package member;

import java.util.HashMap;

public interface MemberLogonDao {
	
	public int checkId(String id);
	public int checkNickName(String nickName);
	public int check(String id, String passwd);
	public MemberLogonDataBean getMember(String id);
	public int insertMember(MemberLogonDataBean dto);
	public String getNickName(String id);
	public int applyBasketBoard(HashMap<String, Integer> map, String id);
	public MemberLogonDataBean confirmMyMatch_first(String id);
	public MemberLogonDataBean confirmMyMatch_second(String id);
	public MemberLogonDataBean confirmMyMatch_third(String id);
//	public int deleteMember(String id);
//	public int modifyMember(MemberLogonDataBean dto);

}
