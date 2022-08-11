package memberHandler;

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
import member.MemberLogonDataBean;

@Controller
public class MySportsHandler implements CommandHandler{
	
	@Resource
	private MatchBoardDao matchDao;
	@Resource
	private MemberLogonDao logonDao;

	@RequestMapping("/mySports")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		MemberLogonDataBean dto = logonDao.getMember(id);
		int member_num = dto.getMember_num();
		List<MatchBoardDataBean> dto_board = matchDao.searchList(member_num);
		request.setAttribute("dto_board", dto_board);
		request.setAttribute("dto", dto);
		request.setAttribute("nick_name", logonDao.getNickName(id));
		request.setAttribute("id", id);
		
		return new ModelAndView("mySports");
	}
	
	

}
