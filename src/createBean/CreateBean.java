package createBean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import board.MatchBoardDBBean;
import board.MatchBoardDao;
import member.MemberLogonDBBean;
import member.MemberLogonDao;
import story.StoryDBBean;
import story.StoryDao;

@Configuration
public class CreateBean {
	
	@Bean
	public MemberLogonDao logonDao() {
		return new MemberLogonDBBean();
	}
	
	@Bean
	public MatchBoardDao matchBoardDao() {
		return new MatchBoardDBBean();
	}
	
	@Bean
	public StoryDao storyDao() {
		return new StoryDBBean();
	}
	
	
	@Bean
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/YasManView/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	

}
