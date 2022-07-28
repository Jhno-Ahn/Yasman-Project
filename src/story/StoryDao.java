package story;

import java.util.List;
import java.util.Map;

public interface StoryDao {
	public int getCount();
	public List<StoryDataBean> getList(Map<String, Integer> map);
	public int insertArticles(StoryDataBean dto);
	public StoryDataBean getArticle(String story_member_id);
	public void addCount(int story_num);
	public int check(String story_member_id);
	public int deleteArticles(String story_num);
}
