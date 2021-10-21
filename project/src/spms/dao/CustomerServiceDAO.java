package spms.dao;

import java.util.List;

import spms.vo.CustomerService;
import spms.vo.User;

public interface CustomerServiceDAO {
	List<CustomerService> selectlist() throws Exception;
	public int insert(CustomerService customerservice) throws Exception;
	public CustomerService selectOne(int no) throws Exception;
	public int update(CustomerService customerservice) throws Exception;
	public int delete(int no) throws Exception;
	
	
	
	
}
