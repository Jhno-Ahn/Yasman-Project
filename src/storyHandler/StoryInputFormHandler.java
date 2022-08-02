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
		String story_og_file = null;

		
		request.setAttribute("story_num", story_num);
		request.setAttribute("story_og_file", story_og_file);

		 	
		return new ModelAndView("storyInputForm");
	}
}
