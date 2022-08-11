package memberHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteMemberFormHandler implements CommandHandler{

	@RequestMapping("/deleteMemberForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		String nick_name = request.getParameter("nick_name");
		
		request.setAttribute("id", id);
		request.setAttribute("nick_name", nick_name);
		
		return new ModelAndView("deleteMemberForm");
	}
	
	

}
