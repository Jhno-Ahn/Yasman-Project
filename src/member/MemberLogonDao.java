package member;

public interface MemberLogonDao {
	
	public int checkId(String id);
	public int checkNickName(String nickName);
	public int check(String id, String passwd);
	public MemberLogonDataBean getMember(String id);
	public int insertMember(MemberLogonDataBean dto);
	public String getNickName(String id);
//	public int deleteMember(String id);
//	public int modifyMember(MemberLogonDataBean dto);

}
