package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.vo.User;

@Component("/user/update.do")
public class UserUpdateController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
	
	public UserUpdateController setUserDAO(MySqlUserDAO userDAO) {
		this.userDAO = userDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"userNo", Integer.class,
				"user", spms.vo.User.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		User user = (User)model.get("user");
		
		if(user.getEmail() == null) {
			Integer userNo = (Integer)model.get("userNo");
			User detailInfo = userDAO.selectOne(userNo);
			model.put("user", detailInfo);
			return "redirect:/auth/LoginForm.jsp";
		} else {
			userDAO.update(user);
			User modifiedUser = userDAO.exist(user.getEmail(), user.getPwd());
			HttpSession session = (HttpSession)model.get("session");
			session.setAttribute("User", modifiedUser);
			return "redirect:/user/MyPage.jsp";
		}
	}

}
