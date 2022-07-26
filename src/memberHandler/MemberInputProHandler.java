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
public class MemberInputProHandler implements CommandHandler{
	
	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/memberInputPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String doro = request.getParameter("doro");
		String jibun = request.getParameter("jibun");
		
		MemberLogonDataBean dto = new MemberLogonDataBean();
		dto.setId(request.getParameter("id"));
		dto.setMember_name(request.getParameter("member_name"));
		dto.setNick_name(request.getParameter("nick_name"));
		dto.setPasswd(request.getParameter("passwd"));
		dto.setMember_addr(doro + jibun);
		dto.setMember_tel(request.getParameter("member_tel"));
		dto.setReg_num(request.getParameter("reg_num"));
		dto.setMember_reg_date(new Timestamp(System.currentTimeMillis()));
		
		
	
		int result = logonDao.insertMember(dto);
		request.setAttribute("result", result );
		request.setAttribute("id", id);
		
		return new ModelAndView("memberInputPro");
	}
	

}
