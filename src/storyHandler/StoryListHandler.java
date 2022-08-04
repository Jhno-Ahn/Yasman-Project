package storyHandler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.BasketBoardDBBean;
import member.MemberLogonDao;
import story.StoryDao;
import story.StoryDataBean;


@Controller
public class StoryListHandler implements CommandHandler{
	
	@Resource
	private StoryDao storyDao;
	
	@Resource MemberLogonDao logonDao;
	
	@RequestMapping("/storyList")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		int pageSize = 6;
		int pageBlock = 3;

		int count = 0;
		String pageNum = null;
		int currentPage = 0;
		int start = 0;
		int end = 0;
		int number = 0;
		
		int pageCount = 0;
		int startPage = 0;
		int endPage = 0;

		pageNum = request.getParameter( "pageNum" );
		if( pageNum == null ) {
			pageNum = "1";
		}
		currentPage = Integer.parseInt( pageNum );
		start = ( currentPage -1 ) * pageSize + 1;			// ( 5 - 1 ) * 10 + 1		41
		end = start + pageSize - 1;							// 41 + 10 -1				50
		
		count = storyDao.getCount();
		
		if( end > count ) end = count;
		
		number = count - ( currentPage - 1 ) * pageSize;	// 50 - ( 5 - 1 ) * 10		10 
		
		pageCount = ( count / pageSize ) + ( count % pageSize > 0 ? 1 : 0 );
		startPage = ( currentPage / pageBlock ) * pageBlock + 1;	// ( 19 / 10 ) * 10 + 1		11
		if( currentPage % pageBlock == 0 ) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;						// 11 + 10 -1 				20
		if( endPage > pageCount ) endPage = pageCount;

		request.setAttribute( "count", count );
		request.setAttribute( "number", number );
		request.setAttribute( "startPage", startPage );
		request.setAttribute( "endPage", endPage );
		request.setAttribute( "pageBlock", pageBlock);
		request.setAttribute( "currentPage", currentPage );
		request.setAttribute( "pageCount", pageCount );
		request.setAttribute( "pageNum", pageNum );
		
		if(count !=0) {
			
			Map<String , Integer> map = new HashMap<String, Integer>();
			map.put("start", start);
			map.put("end",end);
			
			//List<StoryDataBean> dtos = new ArrayList<StoryDataBean>();
			List<StoryDataBean> dtos = storyDao.getList(map);
			//dtos = this.storyDao.getList(map);
			request.setAttribute("dtos", dtos);
			
		}
			
		
		if(request.getParameter("id") != null) {
			String id = request.getParameter("id");
			request.setAttribute("id", id);
			request.setAttribute("nick_name", logonDao.getNickName(id));
			
		}
		
		return new ModelAndView("storyList");
	}
	
	
	
}
