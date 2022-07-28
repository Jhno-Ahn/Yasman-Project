package storyHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StroyDeleteFormHandler implements CommandHandler {
	@RequestMapping("/storyDeleteForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String story_num = request.getParameter("story_num");
		//String pageNum = request.getParameter("pageNum");
		
		request.setAttribute("story_num", story_num);
		
		return new ModelAndView("storyDeleteForm");
	}
	
}
