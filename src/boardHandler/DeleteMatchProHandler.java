package boardHandler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.MatchBoardDao;
import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class DeleteMatchProHandler implements CommandHandler{
	
	@Resource
	private MatchBoardDao matchDao;
	@Resource
	private MemberLogonDao logonDao;

	@RequestMapping("/deleteMatchPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		int result_board = matchDao.deleteMatch(match_num);
		
		List<MemberLogonDataBean> dtos = logonDao.confirmMatch(match_num);
		
		for(MemberLogonDataBean dto : dtos) {
			if(dto.getMy_match_num_first() == match_num) {
				int result = logonDao.deleteMatch_member_first(match_num);
				request.setAttribute("result", result);
			} else if (dto.getMy_match_num_second() == match_num) {
				int result = logonDao.deleteMatch_member_second(match_num);
				request.setAttribute("result", result);
			} else {
				int result = logonDao.deleteMatch_member_third(match_num);
				request.setAttribute("result", result);
			}
		}
		
		return new ModelAndView("deleteMatchPro");
	}
	
	

}
