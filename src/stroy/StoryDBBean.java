package stroy;

import java.util.List;
import java.util.Map;

import mybatis.SqlMapClient;

public class StoryDBBean implements StoryDao {

	public int getCount() {
		return SqlMapClient.getSession().selectOne("Story.getCount");
	}

	@Override
	public List<StoryDataBean> getArticles(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertArticles(StoryDataBean dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public StoryDataBean getArticles(int yas_Num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addCount(int yas_Num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int check(int yas_Num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticles(String yas_Writer) {
		// TODO Auto-generated method stub
		return 0;
	}
}
