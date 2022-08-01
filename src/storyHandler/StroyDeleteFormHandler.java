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
		
		int story_num = Integer.parseInt(request.getParameter("story_num"));
		//String story_member_id = request.getParameter("story_member_id");
		//String pageNum = request.getParameter("pageNum");
		
		
		request.setAttribute("story_num", story_num);
		//request.setAttribute("story_member_id", story_member_id);
		//request.setAttribute("pageNum", pageNum);
		
		return new ModelAndView("storyDeleteForm");
	}
	
}
