package storyHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import story.StoryDao;
import story.StoryDataBean;


@Controller
public class StoryListHandler implements CommandHandler{
	
	@Resource
	private StoryDao storyDao;
	
	@RequestMapping("/storyList")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		int pageSize = 10;
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
		
		/*
		 * StoryDataBean dto = new StoryDataBean();
		 * dto.setStory_num(Integer.parseInt(request.getParameter("story_num")));
		 * dto.setStory_title(request.getParameter("story_title"));
		 * dto.setStory_member_id(request.getParameter("story_member_id"));
		 */
		/*
		 * String story_num = null; String story_title = null; String story_member_id =
		 * null;
		 * 
		 * 
		 * Map<String, String> map = new HashMap<String, String>(); map.put("story_num",
		 * story_num); map.put("story_title", story_title); map.put("story_member_id",
		 * story_member_id);
		 * 
		 * List<StoryDataBean> dtos = storyDao.getArticles(map);
		 * request.setAttribute("dtos", dtos);
		 */
		
		Map<String , Integer> map = new HashMap<String, Integer>();
		
		List<StoryDataBean> dtos = new ArrayList<StoryDataBean>();
			dtos = this.storyDao.getList(map);
			request.setAttribute("dtos", dtos);
			
		
		return new ModelAndView("storyList");
	}
	
	
	
}
