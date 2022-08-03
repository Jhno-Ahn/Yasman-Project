package boardHandler;

import java.util.HashMap;
import java.util.Map;

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
public class ApplyBasketMatchProHandler implements CommandHandler{

	@Resource
	private MemberLogonDao logonDao;
	
	@RequestMapping("/applyBasketMatchPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		MemberLogonDataBean dto = logonDao.getMember(id);
		
		int member_num = dto.getMember_num();
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("member_num", member_num);
		map.put("match_num", match_num);
		
		int result = logonDao.applyBasketBoard(map, id);
		request.setAttribute("result", result);
		
		return new ModelAndView("applyBasketMatchPro");
	}
	
	

}
