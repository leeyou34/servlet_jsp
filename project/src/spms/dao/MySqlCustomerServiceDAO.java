package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.CustomerService;


@Component("customerserviceDAO")
public class MySqlCustomerServiceDAO implements CustomerServiceDAO{
	DataSource ds;
	
	public void setDataSource(DataSource ds){
		this.ds = ds;
	}
	
	@Override
	public List<CustomerService> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM CUSTOMERSERVICETBL ORDER BY QNA_NO DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<CustomerService> customerservice = new ArrayList<CustomerService>();
			while(rs.next()) {
				customerservice.add(new CustomerService()
										  .setQna_no(rs.getInt("QNA_NO"))
										  .setEmail(rs.getString("EMAIL"))
										  .setTitle(rs.getString("TITLE"))
										  .setQna_content(rs.getString("QNA_CONTENT"))
										  .setRegdate(rs.getDate("REG_DATE")));	
			}
			
			return customerservice;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public int insert(CustomerService customerservice) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO CINEMAWAYDB.CUSTOMERSERVICETBL (TITLE, QNA_CONTENT, EMAIL, REGDATE)" +
				   "VALUES(?, ?, ?, NOW())";
		
//		String sqlInsert = "INSERT INTO CINEMAWAYDB.CUSTOMERSERVICETBL ( TITLE, QNA_CONTENT)" +
//									   "VALUES(?, ? )";
		
//		String sqlInsert = "INSERT INTO CUSTOMERSERVICETBL ( TITLE, QNA_CONTENT, REG_DATE)" +
//				   "VALUES(?, ?, NOW())";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, customerservice.getTitle());
			stmt.setString(2, customerservice.getQna_content());
			stmt.setString(3, customerservice.getEmail());

			
			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public CustomerService selectOne(int qna_no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM CUSTOMERSERVICETBL WHERE QNA_NO=" + qna_no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new CustomerService()
									.setQna_no(rs.getInt("QNA_NO"))
									.setEmail(rs.getString("EMAIL"))
									.setTitle(rs.getString("TITLE"))
									.setQna_content(rs.getString("QNA_CONTENT"))
									.setRegdate(rs.getDate("REG_DATE"));	
						
			} else {
				throw new Exception("해당 번호의 고객 문의 자료를 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
	
	public int update(CustomerService customerservice) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlUpdate = "UPDATE CUSTOMERSERVICETBL SET EMAIL=?, TITLE=?, QNA_CONTENT=?, REG_DATE=? WHERE QNA_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, customerservice.getEmail());
			stmt.setString(2, customerservice.getTitle());
			stmt.setString(3, customerservice.getQna_content());
			stmt.setDate(4, new java.sql.Date(customerservice.getRegdate().getTime()));

			
			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public int delete(int qna_no) throws Exception {
		int result =0;
		Connection connection = null;
		Statement stmt = null;
		String sqlDelete = "DELETE FROM CUSTOMERSERVICETBL WHERE QNA_NO=" + qna_no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(sqlDelete);
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

	}
		
}
