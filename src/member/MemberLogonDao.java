package member;

import java.util.HashMap;
import java.util.List;

public interface MemberLogonDao {
	
	public int checkId(String id);
	public int checkNickName(String nickName);
	public int check(String id, String passwd);
	public MemberLogonDataBean getMember(String id);
	public int insertMember(MemberLogonDataBean dto);
	public String getNickName(String id);
	public int applyMatchBoard(HashMap<String, Integer> map, String id);
	public MemberLogonDataBean confirmMyMatch_first(String id);
	public MemberLogonDataBean confirmMyMatch_second(String id);
	public MemberLogonDataBean confirmMyMatch_third(String id);
	public MemberLogonDataBean getMember_num(int member_num);
	public int cancelMatchBoard_first(int member_num);
	public int cancelMatchBoard_second(int member_num);
	public int cancelMatchBoard_third(int member_num);
	public int deleteMember(String id);
	public int modifyMember(MemberLogonDataBean dto);
	public List<MemberLogonDataBean> listMember();
	public List<MemberLogonDataBean> confirmMatch(int match_num);
	public int deleteMatch_member_first(int match_num);
	public int deleteMatch_member_second(int match_num);
	public int deleteMatch_member_third(int match_num);

}
