package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.BasketBoardDBBean;
import board.BasketBoardDao;
import board.BasketBoardDataBean;

@Controller
public class BasketBallContentHandler implements CommandHandler{
	
	@Resource
	private BasketBoardDao basketBoardDao;
	
	@RequestMapping("/basketBall/basketBallContent")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = request.getParameter("id");
		int match_num = Integer.parseInt(request.getParameter("match_num"));
		BasketBoardDataBean dto = basketBoardDao.contentMatch(match_num);
		
		request.setAttribute("dto", dto);
		request.setAttribute("id", id);
		request.setAttribute("match_num", match_num);
		return new ModelAndView("basketBall/basketBallContent");
	}
	
	

}
