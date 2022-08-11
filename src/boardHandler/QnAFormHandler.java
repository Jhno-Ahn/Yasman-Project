package boardHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.MemberLogonDao;
import member.MemberLogonDataBean;
import memberHandler.CommandHandler;

@Controller
public class QnAFormHandler implements CommandHandler {
   
   @Resource
   private MemberLogonDao logonDao;

   @RequestMapping("/QnAForm")
   @Override
   public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
      
      request.setCharacterEncoding("utf-8");
      
      String id = request.getParameter("id");
      String nick_name = request.getParameter("nick_name");
      
      MemberLogonDataBean dto = logonDao.getMember(id);
      
      request.setAttribute("id", id);
      request.setAttribute("nick_name", nick_name);
      request.setAttribute("dto", dto);
      
      
      return new ModelAndView("QnAForm");
   }
   
   

}