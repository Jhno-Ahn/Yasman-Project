package storyHandler;

import java.io.File;
import java.util.logging.Logger;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.sun.org.slf4j.internal.LoggerFactory;
import com.yasman.utils.UploadFileUtils;

import story.StoryDataBean;

@Controller
@RequestMapping("/storyList")
public class StoryFileHandler {
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	public String storyFileRegister(StoryDataBean dto, MultipartFile file) throws Exception {
		
		String imgUploadPath = uploadPath + File.separator + "YasMan/WebContent/YasManView/assets/img/yasman";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setStory_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		
		return "storyList";
	}
}
