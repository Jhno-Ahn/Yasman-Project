package story;

import java.util.List;
import java.util.Map;

import mybatis.SqlMapClient;

public class StoryDBBean implements StoryDao {

	public int getCount() {
		return SqlMapClient.getSession().selectOne("Story.getCount");
	}

	@Override
	public List<StoryDataBean> getList(Map<String, Integer> map) {
		return SqlMapClient.getSession().selectList("Story.getList");
	}

	@Override
	public int insertArticles(StoryDataBean dto) {
		return SqlMapClient.getSession().insert("Story.insertArticles",dto);
	}

	@Override
	public StoryDataBean getArticle(String story_member_id) {
		return SqlMapClient.getSession().selectOne("Story.getArticle", story_member_id);
	}

	@Override
	public void addCount(int yas_Num) {
	}

	@Override
	public int check(String story_member_id) {
		StoryDataBean dto = getArticle(story_member_id);
		int result = 0;
		if(dto.getStory_member_id().equals(story_member_id)) {
			result = 1;
		} else {
			result = 0;
		}
		return result;
	}

	@Override
	public int deleteArticles(String story_num) {
		
		return SqlMapClient.getSession().delete("Story.deleteArticles", story_num);
	}
}
