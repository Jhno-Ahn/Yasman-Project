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

}
