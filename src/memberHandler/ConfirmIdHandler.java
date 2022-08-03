package memberHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;

@Controller
public class ConfirmIdHandler implements CommandHandler{
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/confirmId")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		
		String id = request.getParameter("id");

		int result = logonDao.checkId(id); //아이디가 있으면 1을 리턴, 없으면 0을 리턴
		
		request.setAttribute("result", result);
		//result 넘기기
		request.setAttribute("id", id);
		
		return new ModelAndView("confirmId");
	}
	
	

}
