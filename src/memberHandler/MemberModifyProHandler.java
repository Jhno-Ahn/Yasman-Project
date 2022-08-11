package memberHandler;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;
import member.MemberLogonDataBean;

@Controller
public class MemberModifyProHandler implements CommandHandler{

	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/memberModifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
request.setCharacterEncoding("utf-8");
		
		String doro = request.getParameter("doro");
		String jibun = request.getParameter("jibun");
		
		MemberLogonDataBean dto = new MemberLogonDataBean();
		dto.setId((String)request.getSession().getAttribute("memId"));
		dto.setPasswd(request.getParameter("passwd"));
		dto.setMember_addr(doro + jibun);
		dto.setMember_tel(request.getParameter("member_tel"));
		request.setAttribute("dto", dto);
	
		int result = logonDao.modifyMember(dto);
		request.setAttribute("result", result );
		
		return new ModelAndView("memberModifyPro");
	}
	
	

}
