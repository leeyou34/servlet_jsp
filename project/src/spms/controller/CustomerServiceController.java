package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.CustomerServiceDAO;
import spms.dao.MySqlCustomerServiceDAO;

@Component("/customerservice/qna1.do")
public class CustomerServiceController implements Controller{
	CustomerServiceDAO customerserviceDAO;
	
	public CustomerServiceController setCustomerServiceDAO(MySqlCustomerServiceDAO customerserviceDAO) {
	this.customerserviceDAO = customerserviceDAO; // i have a bad feeling about this controller's constructor part.
	return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//model.put("customerservices", customerserviceDAO.selectlist()); // the key value that is listed as customerservice has to declare on .jsp file with cLforEach var type...
		return "/customerservice/Cinemaway_QnA1.jsp";
	}
}

	


//public class CustomerServiceController implements Controller, DataBinding {
//	MySqlCustomerServiceDAO customerserviceDAO = null;
//	
//	public CustomerServiceController setCustomerServiceDAO(MySqlCustomerServiceDAO customerserviceDAO) {
//		this.customerserviceDAO = customerserviceDAO; // i have a bad feeling about this controller's constructor part.
//		return this;
//	}
//}
