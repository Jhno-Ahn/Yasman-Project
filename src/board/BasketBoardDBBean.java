package board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import member.MemberLogonDataBean;
import mybatis.SqlMapClient;

public class BasketBoardDBBean implements BasketBoardDao{
	
	public int insertBasketBoard(BasketBoardDataBean dto) {
		return SqlMapClient.getSession().insert("YasMember.insertBasketBoard", dto);
}
	
	public List<BasketBoardDataBean> selectList(String match_stardi_name){
		return SqlMapClient.getSession().selectList("YasMember.selectList", match_stardi_name);
	}
	
	public BasketBoardDataBean contentMatch(int match_num) {
		return SqlMapClient.getSession().selectOne("YasMember.contentMatch", match_num);
	}
		
	

}
