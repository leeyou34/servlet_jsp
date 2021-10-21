package spms.controller;

import java.util.Map;


import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.vo.User;
import spms.annotation.Component;

//HttpServlet은 GenericServlet을 상속받은 클래스
//service() 메소드를 호출방식에 따라 doGet(), doPost(), doPut(), doDelete()로 분리해놓음
@Component("/user/add.do")
public class UserAddController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
	
	public UserAddController setUserDAO(MySqlUserDAO userDAO) {
		this.userDAO = userDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"user", spms.vo.User.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		User user = (User)model.get("user");
		
		if(user.getEmail() == null) {
			return "redirect:../UserForm.jsp";
		} else {
			userDAO.insert(user);
			
			return "redirect:../auth/login.do";
		}
	}
}
