package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.vo.User;

/*
 * 페이지 컨트롤러들에서 Servlet이 제거되고 일반 클래스로 변하기 때문에
 * HttpServletRequest, HttpServletResponse 및 ServletContext를 사용할 수 없다
 * execute 메소드의 매개변수로 String Key값을 가지는 객체들을 맵에 담아서 전달
 * */
@Component("/main.do")
public class MainController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
    
    public MainController setMemberDAO(MySqlUserDAO userDAO) {
       this.userDAO = userDAO;
       return this;
    }
    
    @Override
   public Object[] getDataBinders() {
      //key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
      return new Object[] {
            "loginInfo", spms.vo.User.class
      };
   }
    
   @Override
   public String execute(Map<String, Object> model) throws Exception {
	   User loginInfo = (User)model.get("loginInfo");
      
      if(loginInfo.getEmail() == null) {
         return "/Main.jsp";
      } else {
    	  User user = userDAO.exist(loginInfo.getEmail(), loginInfo.getPwd());
         
         if(user != null) {
            HttpSession session = (HttpSession)model.get("session");
            session.setAttribute("User", user);
            return "redirect:../user/list.do";
         } else {
            return "/auth/LoginFail.jsp";
         }
      }
   }
}