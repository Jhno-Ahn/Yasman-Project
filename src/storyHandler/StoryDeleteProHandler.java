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
		
		// 삭제 (story_num 값만 받아서 story_num값 해당하는 녀석 삭제)
		int story_num = Integer.parseInt(request.getParameter("story_num"));
		int result = storyDao.deleteArticles(story_num);
		request.setAttribute("result", result);
		
		
		
		//String story_member_id = (request.getParameter("story_member_id"));
		
		//int resultCheck = storyDao.check(story_num, story_member_id);
		
		//request.setAttribute("resultCheck", resultCheck);
		
		//if(resultCheck !=0) {
		//	int result = storyDao.deleteArticles(story_num);
		//	request.setAttribute("result", result);
		//}
		
		
		
		
		return new ModelAndView("storyDeletePro");
	}
}
