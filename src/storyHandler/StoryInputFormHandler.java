package storyHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoryInputFormHandler implements CommandHandler{
	@RequestMapping("/storyInputForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		int story_num = 0;
		int story_title = 0;
		int story_member_id = 0;
		//int story_writer = 0;
		//int story_content = 0;
		
		request.setAttribute("story_num", story_num);
		request.setAttribute("story_title", story_title);
		request.setAttribute("story_member_id", story_member_id);
	//	request.setAttribute("story_writer", story_writer);
	//	request.setAttribute("story_content", story_content);
		 	
		return new ModelAndView("storyInputForm");
	}
}
