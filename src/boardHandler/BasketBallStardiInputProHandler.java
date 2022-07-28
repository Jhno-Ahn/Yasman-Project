package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.StardiDataBean;
import member.MemberLogonDao;

public class BasketBallStardiInputProHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/basketBallStardiInputPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		request.setCharacterEncoding("utf-8");

		StardiDataBean dto = new StardiDataBean();
		
		dto.setStardi_kind(request.getParameter("kind"));
		String stardi_name = request.getParameter("stardi_name");
		
		
		return new ModelAndView("basketBallStardiInputPro");
	}
	
	

}
