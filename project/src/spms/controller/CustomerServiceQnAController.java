package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.CustomerServiceDAO;
import spms.vo.CustomerService;
import spms.vo.User;

@Component("/customerservice/qna3.do")
public class CustomerServiceQnAController implements Controller, DataBinding{
	CustomerServiceDAO customerserviceDAO;
	
	public CustomerServiceQnAController setCustomerServiceDAO(CustomerServiceDAO customerserviceDAO) {
	this.customerserviceDAO = customerserviceDAO; // i have a bad feeling about this controller's constructor part.
	
	return this;
	}
	
	 @Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		 
		return new Object[] {
			
				"customerservices", spms.vo.CustomerService.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		CustomerService customerservices = (CustomerService)model.get("customerservices");
		if(customerservices.getTitle() == null) {
			return "/customerservice/Cinemaway_QnA3.jsp";
		} else {
			System.out.println(customerservices.getTitle());
			System.out.println(customerservices.getQna_content());
			HttpSession session = (HttpSession)model.get("session");
			User user = (User)session.getAttribute("User");
			if(user != null && user.getEmail() != null) {
				customerservices.setEmail(user.getEmail());
			} else {
				customerservices.setEmail("GUEST");
			}
			customerserviceDAO.insert(customerservices);
			
			return "redirect:qna1.do";
		}
	}
}


	
