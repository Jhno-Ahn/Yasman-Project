package boardHandler;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.MatchBoardDao;
import board.MatchBoardDataBean;
import member.MemberLogonDBBean;
import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class ApplyFootMatchProHandler implements CommandHandler{

	@Resource
	private MemberLogonDao logonDao;
	@Resource
	private MatchBoardDao matchDao;
	
	@RequestMapping("/applyFootMatchPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		MemberLogonDataBean dto = logonDao.getMember(id);
		int member_num = dto.getMember_num();
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("member_num", member_num);
		map.put("match_num", match_num);
		
		
		
		//여기에 두 줄만 기입
		matchDao.matchBoard_personnel(match_num);
		MatchBoardDataBean dto_board = matchDao.contentMatch(match_num);
		if(dto_board.getMatch_member_num_first() == 0 || dto_board.getMatch_member_num_second() == 0) {
			if(dto_board.getMatch_member_num_first() == 0) {
				matchDao.matchBoard_member_num_first(map);
			} else {
				matchDao.matchBoard_member_num_second(map);
			}
		
		int result = logonDao.applyMatchBoard(map, id);
		request.setAttribute("result", result);
		}
		
		return new ModelAndView("applyFootMatchPro");
	}
}
	

