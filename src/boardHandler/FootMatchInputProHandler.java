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

@Controller
public class FootMatchInputProHandler implements CommandHandler{
	
	@Resource
	private MatchBoardDao matchBoardDao;
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/footMatchInputPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		if(request.getParameter("id") != null) {
			String id = request.getParameter("id");
			request.setAttribute("id", id);
			request.setAttribute("nick_name", logonDao.getNickName(id));
		}
		
		MatchBoardDataBean dto = new MatchBoardDataBean();
		dto.setMatch_kind(request.getParameter("match_kind"));
		dto.setMatch_stardi_name(request.getParameter("match_stardi_name"));
		dto.setMatch_personnel(2);
		dto.setMatch_personnel_now(0);
		dto.setMatch_day(request.getParameter("match_day"));
		dto.setMatch_time(request.getParameter("match_time"));
		
		int result = matchBoardDao.insertMatchBoard(dto);
		request.setAttribute("result", result);
		
		
		return new ModelAndView("footMatchInputPro");
	}

}
