package board;

import java.util.HashMap;
import java.util.List;

import mybatis.SqlMapClient;

public class MatchBoardDBBean implements MatchBoardDao{
	
	public int insertMatchBoard(MatchBoardDataBean dto) {
		return SqlMapClient.getSession().insert("YasMember.insertMatchBoard", dto);
	}
	
	public List<MatchBoardDataBean> selectList(String match_stardi_name){
		return SqlMapClient.getSession().selectList("YasMember.selectList", match_stardi_name);
	}
	
	public List<MatchBoardDataBean> listMatch() {
		return SqlMapClient.getSession().selectList("YasMember.listMatch");
	}
	
	public MatchBoardDataBean contentMatch(int match_num) {
		return SqlMapClient.getSession().selectOne("YasMember.contentMatch", match_num);
	}
		
	public int matchBoard_personnel(int match_num) {
		return SqlMapClient.getSession().update("YasMember.matchBoard_personnel", match_num);
	}
	
	public int matchBoard_member_num_first(HashMap<String, Integer> map) {
		return SqlMapClient.getSession().update("YasMember.matchBoard_member_num_first", map);
	}
	
	public int matchBoard_member_num_second(HashMap<String, Integer> map) {
		return SqlMapClient.getSession().update("YasMember.matchBoard_member_num_second", map);
	}
	
	public List<MatchBoardDataBean> searchList(int member_num) {
		return SqlMapClient.getSession().selectList("YasMember.searchList", member_num);
	}

	public int deleteMatch(int match_num) {
		return SqlMapClient.getSession().delete("YasMember.deleteMatch", match_num);
	}
	
	public int cancelMatchBoard_personnel(int match_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatchBoard_personnel", match_num);
	}
	
	public MatchBoardDataBean searchMatch(HashMap<String, Integer> map) {
		return SqlMapClient.getSession().selectOne("YasMember.searchMatch", map);
	}
	
	public int cancelMatchBoard_member_num_first(int match_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatchBoard_member_num_first", match_num);
	}
	
	public int cancelMatchBoard_member_num_second(int match_num) {
		return SqlMapClient.getSession().update("YasMember.cancelMatchBoard_member_num_second", match_num);
	}
	
	public int checkMatch(HashMap <String, String> map) {
		return SqlMapClient.getSession().selectOne("YasMember.checkMatch", map);
	}
	
}
