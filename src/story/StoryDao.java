package story;

import java.util.List;
import java.util.Map;

public interface StoryDao {
	public int getCount();
	public List<StoryDataBean> getArticles(Map<String, String> map);
	public int insertArticles(StoryDataBean dto);
	public StoryDataBean getArticles(int story_num);
	public void addCount(int story_num);
	public int check(int story_num);
	public int deleteArticles(int story_num);
}
