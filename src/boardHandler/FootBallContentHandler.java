package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.MatchBoardDao;
import board.MatchBoardDataBean;
import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class FootBallContentHandler implements CommandHandler{
	
	@Resource
	private MatchBoardDao matchBoardDao;
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/footBallContent")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		MemberLogonDataBean dto_member = logonDao.getMember(id);
		String nick_name = dto_member.getNick_name();
		request.setAttribute("nick_name", nick_name);
		
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		MatchBoardDataBean dto = matchBoardDao.contentMatch(match_num);
		
		request.setAttribute("dto", dto);
		request.setAttribute("id", id);
		request.setAttribute("match_num", match_num);
		return new ModelAndView("footBallContent");
	}
	
	

}
