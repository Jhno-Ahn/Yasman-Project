package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class ApplyBasketMatchFormHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/applyBasketMatchForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		
		String match_num = request.getParameter("match_num");
		request.setAttribute("match_num", match_num);
		
		MemberLogonDataBean dto = logonDao.getMember(id);
		request.setAttribute("dto", dto);
		
		
		return new ModelAndView("applyBasketMatchForm");
	}
	
	

}
