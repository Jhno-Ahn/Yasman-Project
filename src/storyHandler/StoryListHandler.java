package storyHandler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import story.StoryDao;
import story.StoryDataBean;


@Controller
public class StoryListHandler implements CommandHandler{
	
	@Resource
	private StoryDao storyDao;
	
	@RequestMapping("/storyList")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		/*
		 * StoryDataBean dto = new StoryDataBean();
		 * dto.setStory_num(Integer.parseInt(request.getParameter("story_num")));
		 * dto.setStory_title(request.getParameter("story_title"));
		 * dto.setStory_member_id(request.getParameter("story_member_id"));
		 */
		String story_num = null;
		String story_title = null;
		String story_member_id = null;
		
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("story_num", story_num);
		map.put("story_title", story_title);
		map.put("story_member_id", story_member_id);
		
		List<StoryDataBean> dtos = storyDao.getArticles(map);
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("storyList");
	}
	
	
	
}
