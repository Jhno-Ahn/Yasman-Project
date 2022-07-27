package story;

import java.util.List;
import java.util.Map;

import mybatis.SqlMapClient;

public class StoryDBBean implements StoryDao {

	public int getCount() {
		return SqlMapClient.getSession().selectOne("Story.getCount");
	}

	@Override
	public List<StoryDataBean> getArticles(Map<String, String> map) {
		return SqlMapClient.getSession().selectList("Story.getArticles",map);
	}

	@Override
	public int insertArticles(StoryDataBean dto) {
		return SqlMapClient.getSession().insert("Story.insertArticles",dto);
	}

	@Override
	public StoryDataBean getArticles(int yas_Num) {
		return null;
	}

	@Override
	public void addCount(int yas_Num) {
	}

	@Override
	public int check(int yas_Num) {
		return 0;
	}

	@Override
	public int deleteArticles(int story_num) {
		return 0;
	}
}
