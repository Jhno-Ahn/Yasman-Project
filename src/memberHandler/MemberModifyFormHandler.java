package memberHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class MemberModifyFormHandler implements CommandHandler{
	@Resource
	private MemberLogonDao logonDao;

	@RequestMapping("/memberModifyForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		MemberLogonDataBean dto = logonDao.getMember(id);
		request.setAttribute("dto", dto);
		request.setAttribute("id", id);
		
		return new ModelAndView("memberModifyForm");
	}
	
	

}
