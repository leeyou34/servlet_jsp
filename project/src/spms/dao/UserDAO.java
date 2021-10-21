package spms.dao;

import java.util.List;

import spms.vo.User;

/*
 * 인터페이스 생성 이유
 * 
 * Oracle, MySql, MSSql 등 DBMS 변경시 
 * 이 인터페이스를 상속받는 DAO 클래스를 정의하되
 * 각 DBMS 특성에 맞게 구현하여 DBMS 교체를 쉽게 함
 * 메서드의 역할과 리턴 값은 동일하게 처리
 * 
 * */
public interface UserDAO {
	public List<User> selectlist() throws Exception;
	public int insert(User user) throws Exception;
	public int delete(int userNo) throws Exception;
	public User selectOne(int userNo) throws Exception;
	public int update(User user) throws Exception;
	public User exist(String email, String pwd) throws Exception;
}
