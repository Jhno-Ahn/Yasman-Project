package boardHandler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.MatchBoardDao;
import board.MatchBoardDataBean;
import member.MemberLogonDao;

@Controller
public class MatchAdminHandler implements CommandHandler{
	@Resource
	private MemberLogonDao logonDao;
	@Resource
	private MatchBoardDao matchDao; 

	@RequestMapping("/matchAdmin")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		request.setAttribute("nick_name", logonDao.getNickName(id));
		
		List<MatchBoardDataBean> dtos = matchDao.listMatch();
		request.setAttribute("dtos", dtos);
		
		
		return new ModelAndView("matchAdmin");
	}
	
	

}
