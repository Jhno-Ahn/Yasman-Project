package storyHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import story.StoryDao;
import story.StoryDataBean;

@Controller
public class StroyInputProHandler implements CommandHandler{
	
	@Resource
	private StoryDao storyDao;
	
	
	@RequestMapping("/storyInputPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		StoryDataBean dto = new StoryDataBean();
		dto.setStory_num(Integer.parseInt(request.getParameter("story_num")));
		dto.setStory_title(request.getParameter("story_title"));
		dto.setStory_member_id(request.getParameter("story_member_id"));
		//dto.setStory_writer(request.getParameter("story_writer"));
		//dto.setStory_content(request.getParameter("story_content"));
		
		int result = storyDao.insertArticles(dto);
		
		
		request.setAttribute("result", result);
		request.setAttribute("story_member_id", request.getParameter("story_member_id"));
		
		return new ModelAndView("storyInputPro");
	}
	
}
