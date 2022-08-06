package board;

import java.util.HashMap;
import java.util.List;

public interface MatchBoardDao {
	
	public int insertMatchBoard(MatchBoardDataBean dto);
	public List<MatchBoardDataBean> selectList(String name);
	public MatchBoardDataBean contentMatch(int num);
	public int matchBoard_personnel(int match_num);
	public int matchBoard_member_num_first(HashMap<String, Integer> map);
	public int matchBoard_member_num_second(HashMap<String, Integer> map);
	public List<MatchBoardDataBean> searchList(int member_num);
	public int deleteMatch(int match_num);
	public int cancelMatchBoard_personnel(int match_num);
	public MatchBoardDataBean searchMatch(HashMap<String, Integer> map);
	public int cancelMatchBoard_member_num_first(int match_num);
	public int cancelMatchBoard_member_num_second(int match_num);

}
