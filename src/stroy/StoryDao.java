package stroy;

import java.util.List;
import java.util.Map;

public interface StoryDao {
	public int getCount();
	public List<StoryDataBean> getArticles(Map<String, Integer> map);
	public int insertArticles(StoryDataBean dto);
	public StoryDataBean getArticles(int yas_Num);
	public void addCount(int yas_Num);
	public int check(int yas_Num);
	public int deleteArticles(String yas_Writer);
}
