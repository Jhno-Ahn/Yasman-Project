package member;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import mybatis.SqlMapClient;

public class MemberLogonDBBean implements MemberLogonDao{
	
	public int insertMember(MemberLogonDataBean dto) {
			return SqlMapClient.getSession().insert("YasMember.insertMember", dto);
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
	
	
	
//	public int deleteMember(String id) {
//		return SqlMapClient.getSession().delete("Member.deleteMember", id);
//	}

	
	public MemberLogonDataBean getMember(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.getMember", id);
	}
	
	public int applyBasketBoard(HashMap<String, Integer> map, String id) {
		int result = 0;
		MemberLogonDataBean confirm = confirmMyMatch_first(id);
		if(confirm == null) {
			return SqlMapClient.getSession().update("YasMember.applyBasketBoard_first", map);
		} else {
			confirm = confirmMyMatch_second(id);
			if(confirm == null) {
				return SqlMapClient.getSession().update("YasMember.applyBasketBoard_second", map);
			} else {
				confirm = confirmMyMatch_third(id);
				if(confirm == null) {
					return SqlMapClient.getSession().update("YasMember.applyBasketBoard_third", map);
				} else {
					return result;
				}
			}
		}
	}
	
	public MemberLogonDataBean confirmMyMatch_first(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_first");
	}
	public MemberLogonDataBean confirmMyMatch_second(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_second");
	}
	public MemberLogonDataBean confirmMyMatch_third(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.confirmMyMatch_third");
	}
	
//	public int modifyMember(MemberLogonDataBean dto) {
//			return SqlMapClient.getSession().update("Member.modifyMember", dto);
//	}
}
// class
// DAO 처리빈