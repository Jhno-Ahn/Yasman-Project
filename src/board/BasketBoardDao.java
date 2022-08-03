package board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import member.MemberLogonDataBean;

public interface BasketBoardDao {
	
	public int insertBasketBoard(BasketBoardDataBean dto);
	public List<BasketBoardDataBean> selectList(String name);
	public BasketBoardDataBean contentMatch(int num);
	

}
