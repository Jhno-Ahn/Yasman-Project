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
public class ApplyMatchFormHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	@Resource
	private MatchBoardDao matchDao;
	
	@RequestMapping("/applyMatchForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		MatchBoardDataBean dto_board = matchDao.contentMatch(match_num);
		request.setAttribute("dto_board", dto_board);
		
		request.setAttribute("match_num", match_num);
		
		MemberLogonDataBean dto = logonDao.getMember(id);
		request.setAttribute("dto", dto);
		
		
		return new ModelAndView("applyMatchForm");
	}
	
	

}
