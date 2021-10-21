package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.User;

@Component("userDAO")
public class MySqlUserDAO implements UserDAO {
	/*
	 * Connection connection;
	 * 
	 * //DAO객체는 servlet이 아니기 때문에 servletcontext에 있는 커넥션 직접 접근 불가능
	 * //userlistServlet에서 커넥션을 객체를 DAO에 주입해줄 것 public void
	 * setConnection(Connection connection) { this.connection = connection; }
	 */
	
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<User> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM USERTBL ORDER BY USER_NO ASC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<User> usertbl = new ArrayList<User>();
			
			while(rs.next()) {
				usertbl.add(new User()
										.setUserNo(rs.getInt("USER_NO"))
										.setName(rs.getString("NAME"))
										.setEmail(rs.getString("EMAIL")));
			}
			return usertbl;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//userAddServlet에서 입력 폼으로 입력받은 데이터를 user객체로 담아서 
	//DAO로 전달할 예정
	@Override
	public int insert(User user) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		final String sqlInsert = "INSERT INTO USERTBL(USER_NO, EMAIL, PWD, NAME )" +
												"VALUES((SELECT IFNULL(MAX(USER_NO), 0) + 1 FROM usertbl b), ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPwd());
			stmt.setString(3, user.getName());
			//insert 성공하면 1 int 값 리턴
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public int delete(int userNo) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM USERTBL WHERE USER_NO=" + userNo;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			result = stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//해당 멤버 데이터 조회
	@Override
	public User selectOne(int userNo) throws Exception {
		User user = null;
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM USERTBL WHERE USER_NO=" + userNo;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				user = new User()
									 .setUserNo(rs.getInt("USER_NO"))
									 .setEmail(rs.getString("EMAIL"))
									 .setName(rs.getString("UNAME"))
									 .setPwd(rs.getString("PWD"));
			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return user;
	}
	
	//해당 멤버 데이터 수정
	@Override
	public int update(User user) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE USERTBL SET EMAIL=?, NAME=?, PWD=? WHERE USER_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, user.getEmail());
			stmt.setString(3, user.getPwd());
			stmt.setString(2, user.getName());
			stmt.setInt(4, user.getUserNo());
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public User exist(String email, String pwd) throws Exception {
		System.out.println(email);
		System.out.println(pwd);
		User user = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlExist = "SELECT * FROM USERTBL WHERE EMAIL=? AND PWD=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, email);
			stmt.setString(2, pwd);
			rs = stmt.executeQuery();
			if(rs.next()) {
				user = new User()
									 .setUserNo(rs.getInt("USER_NO"))
									 .setName(rs.getString("NAME"))
									 .setEmail(rs.getString("EMAIL"))
									 .setPwd(rs.getString("pwd"));
			} else {
				return null;
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return user;
	}
}
