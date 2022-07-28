package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;


@Controller
public class BasketBallStardiInputFormHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/basketBallStardiInputForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		request.setAttribute("nick_name", logonDao.getNickName(id));
		
		return new ModelAndView("basketBallStardiInputForm");
	}

}
