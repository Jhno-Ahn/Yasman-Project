package boardHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteMatchFormHandler implements CommandHandler{

	@RequestMapping("/deleteMatchForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		int member_num = Integer.parseInt(request.getParameter("member_num"));
		request.setAttribute("match_num", match_num);
		request.setAttribute("member_num", member_num);
		
		return new ModelAndView("deleteMatchForm");
	}
	
	

}

