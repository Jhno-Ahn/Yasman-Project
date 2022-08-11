package member;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import mybatis.SqlMapClient;

public class MemberLogonDBBean implements MemberLogonDao{
	
	public int insertMember(MemberLogonDataBean dto) {
			return SqlMapClient.getSession().insert("YasMember.insertMember", dto);
	}
	
	public int modifyMember(MemberLogonDataBean dto) {
		return SqlMapClient.getSession().update("YasMember.modifyMember", dto);
	}
	
	public String getNickName(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.getNickName", id);
	}
	
	public int checkId(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.checkId", id);
	}
	
	public int checkNickName(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.checkNickName", id);
	}
	
	public int check(String id, String passwd) {
		int result;
		int count = checkId(id);
		if(count == 1) {
			//아이디가 있다
			MemberLogonDataBean dto = getMember(id);
			if(dto.getPasswd().equals(passwd)) {
				//비밀번호가 같다
				result = 1;
			} else {
				//비밀번호가 다르다
				result = 0;
			}
		} else {
			//아이디가 없다
			result = -1;
		}
		return result;
	}
	
	public List<MemberLogonDataBean> listMember() {
		return SqlMapClient.getSession().selectList("YasMember.listMember");
	}
	
	public int deleteMember(String id) {
		return SqlMapClient.getSession().delete("YasMember.deleteMember", id);
	}

	
	public MemberLogonDataBean getMember(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.getMember", id);
	}
	
	public int applyMatchBoard(HashMap<String, Integer> map, String id) {
		int result = 0;
		MemberLogonDataBean confirm = confirmMyMatch_first(id);
		if(confirm == null) {
			return SqlMapClient.getSession().update("YasMember.applyMatchBoard_first", map);
		} else {
			confirm = confirmMyMatch_second(id);
			if(confirm == null) {
				return SqlMapClient.getSession().update("YasMember.applyMatchBoard_second", map);
			} else {
				confirm = confirmMyMatch_third(id);
				if(confirm == null) {
					return SqlMapClient.getSession().update("YasMember.applyMatchBoard_third", map);
				} else {
					return result;
				}
			}
		}
	}
	
	public MemberLogonDataBean confirmMyMatch_first(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_first", id);
	}
	public MemberLogonDataBean confirmMyMatch_second(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_second", id);
	}
	public MemberLogonDataBean confirmMyMatch_third(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_third", id);
	}
	
	public MemberLogonDataBean getMember_num(int member_num) {
		return SqlMapClient.getSession().selectOne("YasMember.getMember_num", member_num);
	}
	
	public int cancelMatchBoard_first(int member_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatch_board_first", member_num);
	}
	
	public int cancelMatchBoard_second(int member_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatch_board_second", member_num);
	}
	
	public int cancelMatchBoard_third(int member_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatch_board_second", member_num);
	}
	
	public List<MemberLogonDataBean> confirmMatch(int match_num) {
		return SqlMapClient.getSession().selectList("YasMember.confirmMatch", match_num);
	}
	
	public int deleteMatch_member_first(int match_num) {
		return SqlMapClient.getSession().update("YasMember.deleteMatch_member_first", match_num);
	}
	
	public int deleteMatch_member_second(int match_num) {
		return SqlMapClient.getSession().update("YasMember.deleteMatch_member_second", match_num);
	}
	
	public int deleteMatch_member_third(int match_num) {
		return SqlMapClient.getSession().update("YasMember.deleteMatch_member_third", match_num);
	}
	
}
// class
// DAO 처리빈