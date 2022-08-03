package memberHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDBBean;
import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class LoginProHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	//패키지 달라서 import
	//객체가 여러개가 생긴건 아님 
	
	@RequestMapping("/loginPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {

		//로그인 프로에 있는 코드를 잘라서 옮김
		   String id = request.getParameter( "id" );
		   String passwd = request.getParameter( "passwd" );
		  
		   int result = logonDao.check( id, passwd );
		   MemberLogonDataBean dto = logonDao.getMember(id);
		   
		   request.setAttribute("result", result);
		   request.setAttribute("id", id);
		   request.setAttribute("member_num", dto.getMember_num());
		
		return new ModelAndView("loginPro");
	}

}
