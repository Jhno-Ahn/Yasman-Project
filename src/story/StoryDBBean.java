package story;

import java.util.List;
import java.util.Map;

import com.oreilly.servlet.MultipartRequest;

import mybatis.SqlMapClient;

public class StoryDBBean implements StoryDao {

	public int getCount() {
		return SqlMapClient.getSession().selectOne("Story.getCount");
	}

	@Override
	public List<StoryDataBean> getList(Map<String, Integer> map) {
		return SqlMapClient.getSession().selectList("Story.getList", map);
	}

	@Override
	public int insertArticles(StoryDataBean dto, MultipartRequest multi) {
		return SqlMapClient.getSession().insert("Story.insertArticles",dto);
	}

	@Override
	public StoryDataBean getArticle(int story_num) {
		return SqlMapClient.getSession().selectOne("Story.getArticle", story_num);
	}

	@Override
	public void addCount(int yas_Num) {
	}

	//@Override
	//public int check(int story_num, String story_member_id) {
	//	StoryDataBean dto = getArticle(story_num);
	//	int result = 0;
	//	if(dto.getStory_member_id().equals(story_member_id)) {
	//		result = 1;
	//	} else {
	//		result = 0;
	//	}
	//	return result;
	//}

	@Override
	public int deleteArticles(int story_num) {
		
		return SqlMapClient.getSession().delete("Story.deleteArticles", story_num);
	}
}
