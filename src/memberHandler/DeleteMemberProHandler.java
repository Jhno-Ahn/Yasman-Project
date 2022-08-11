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
public class DeleteMemberProHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	@Resource
	private MatchBoardDao matchDao;

	@RequestMapping("/deleteMemberPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		String nick_name = request.getParameter("nick_name");
		request.setAttribute("id", id);
		request.setAttribute("nick_name", nick_name);
		MemberLogonDataBean dto = logonDao.getMember(id);
		int member_num = dto.getMember_num();
		
		List<MatchBoardDataBean> dto_boards = matchDao.searchList(member_num);
		if(dto_boards != null) {
			for(MatchBoardDataBean dto_board : dto_boards) {
				if(dto_board.getMatch_member_num_first() == member_num) {
					matchDao.cancelMatchBoard_member_num_first(dto_board.getMatch_num());
					matchDao.cancelMatchBoard_personnel(dto_board.getMatch_num());
				} else if(dto_board.getMatch_member_num_second() == member_num) {
					matchDao.cancelMatchBoard_member_num_second(dto_board.getMatch_num());
					matchDao.cancelMatchBoard_personnel(dto_board.getMatch_num());
				}
			}
		}
		
		int result = logonDao.deleteMember(id);
		return new ModelAndView("deleteMemberPro");
	}
}
