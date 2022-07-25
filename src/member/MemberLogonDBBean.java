package member;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import mybatis.SqlMapClient;

public class MemberLogonDBBean implements MemberLogonDao{
	
	
	public int insertMember(MemberLogonDataBean dto) {
			return SqlMapClient.getSession().insert("YasMember.insertMember", dto);
	}
	
	public int checkId(String id) {
		return SqlMapClient.getSession().selectOne("YasMember.checkId", id);
	}
	
	public int checkNickName(String nick_name) {
		return SqlMapClient.getSession().selectOne("YasMember.checkNickName", nick_name);
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
	
	
	
	
//	public int modifyMember(MemberLogonDataBean dto) {
//			return SqlMapClient.getSession().update("Member.modifyMember", dto);
//	}
	
	
}// class
// DAO 처리빈