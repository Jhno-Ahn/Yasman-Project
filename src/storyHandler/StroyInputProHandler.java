package storyHandler;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

import story.StoryDao;
import story.StoryDataBean;

@Controller
public class StroyInputProHandler implements CommandHandler{
	
	@Resource
	private StoryDao storyDao;
	
	
	
	@RequestMapping("/storyInputPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		
		String path = "C:\\AI\\Workspace\\YasMan\\WebContent\\YasManView\\assets\\img\\yasman"; 
		
		
		MultipartRequest multi = new MultipartRequest( request, path, 1024*1024*30, "utf-8", new DefaultFileRenamePolicy() );
		
		String sysFileName = multi.getFilesystemName("story_img");
		//String ogFileName = multi.getOriginalFileName("story_img");
		//String ogName = path + "\\" + sysFileName;
		//String sysName = path + "\\t" + sysFileName;
		
		//sysFileName = sysFileName.substring(sysFileName.lastIndexOf("\\")+1);
		
		//UUID uuid = UUID.randomUUID();
		//sysFileName = uuid.toString() + "_" + sysFileName;
	
		
		
		
		StoryDataBean dto = new StoryDataBean();
		dto.setStory_num(Integer.parseInt(multi.getParameter("story_num")));
		dto.setStory_title(multi.getParameter("story_title"));
		dto.setStory_member_id(multi.getParameter("story_member_id"));
		dto.setStory_og_file(sysFileName);
		//dto.setStory_writer(request.getParameter("story_writer"));
		//dto.setStory_content(request.getParameter("story_content"));
		
		int result = storyDao.insertArticles(dto);
		
		
		
		request.setAttribute("result", result);
		//request.setAttribute("story_member_id", request.getParameter("story_member_id"));
		
		return new ModelAndView("storyInputPro");
	}
	
}
