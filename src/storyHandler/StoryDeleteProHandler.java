package storyHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import story.StoryDao;

@Controller
public class StoryDeleteProHandler implements CommandHandler{
	@Resource
	private StoryDao storyDao;
	
	@RequestMapping("/storyDeletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String story_num = request.getParameter("story_num");
		
		int resultCheck = storyDao.check(story_num);
		
		request.setAttribute("resultCheck", resultCheck);
		
		if(resultCheck !=0) {
			int result = storyDao.deleteArticles(story_num);
			request.setAttribute("result", result);
		}
		
		return new ModelAndView("storyDeletePro");
	}
}
