package boardHandler;

import java.util.HashMap;

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
public class CancelMatchProHandler implements CommandHandler{
	
	@Resource
	private MatchBoardDao matchDao;
	@Resource
	private MemberLogonDao logonDao;

	@RequestMapping("/cancelMatchPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		int member_num = Integer.parseInt(request.getParameter("member_num"));
		MemberLogonDataBean dto = logonDao.getMember_num(member_num);
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("match_num", match_num);
		map.put("member_num", member_num);
		
		if(dto.getMy_match_num_first() == match_num) {
			logonDao.cancelMatchBoard_first(member_num);
		} else if(dto.getMy_match_num_second() == match_num){
			logonDao.cancelMatchBoard_second(member_num);
		} else if(dto.getMy_match_num_third() == match_num){
			logonDao.cancelMatchBoard_third(member_num);
		}
		
		matchDao.cancelMatchBoard_personnel(match_num);
		
		MatchBoardDataBean dto_board = matchDao.searchMatch(map);
		if(dto_board.getMatch_member_num_first() == member_num) {
			matchDao.cancelMatchBoard_member_num_first(match_num);
		} else if(dto_board.getMatch_member_num_second() == member_num){
			matchDao.cancelMatchBoard_member_num_second(match_num);
		}
		
		return new ModelAndView("cancelMatchPro");
	}
	
	

}
