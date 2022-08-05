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

}
