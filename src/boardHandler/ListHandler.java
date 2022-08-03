package boardHandler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.BasketBoardDBBean;
import board.BasketBoardDataBean;

@Controller
public class ListHandler implements CommandHandler{
	
	@Resource
	private BasketBoardDBBean basketDao;
	
	@RequestMapping("/list")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		String match_stardi_name = request.getParameter("match_stardi_name");
		String id = request.getParameter("id");
		List<BasketBoardDataBean> dtos = basketDao.selectList(match_stardi_name);
		for(BasketBoardDataBean dto:dtos) {
			request.setAttribute("match_num", dto.getMatch_num());
		}
		request.setAttribute("dtos", dtos);
		request.setAttribute("id", id);
		
		return new ModelAndView("list");
	}
	
	

}
