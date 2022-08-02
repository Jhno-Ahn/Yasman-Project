package story;

import java.util.List;
import java.util.Map;

import com.oreilly.servlet.MultipartRequest;

public interface StoryDao {
	public int getCount();
	public List<StoryDataBean> getList(Map<String, Integer> map);
	public int insertArticles(StoryDataBean dto, MultipartRequest multi);
	public StoryDataBean getArticle(int story_num);
	public void addCount(int story_num);
	//public int check(int story_num, String story_member_id);
	public int deleteArticles(int story_num);
}
