package story;

import java.util.List;
import java.util.Map;

import com.oreilly.servlet.MultipartRequest;

public interface StoryDao {
	public int getCount();
	public List<StoryDataBean> getList(Map<String, Integer> map);
	public int insertArticles(StoryDataBean dto);
	public StoryDataBean getArticle(int story_num);
	public void addCount(int story_num);
	public int deleteArticles(int story_num);
}
