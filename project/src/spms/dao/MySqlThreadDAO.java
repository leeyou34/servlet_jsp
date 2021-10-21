package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.NoticeThread;

@Component("threadDAO")
public class MySqlThreadDAO implements ThreadDAO {
	
	DataSource ds;
	
	  public void setDataSource(DataSource ds) {
	      this.ds = ds;
	   }

	@Override
	public List<NoticeThread> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM threadtbl ORDER BY THREAD_NO DESC";
		
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<NoticeThread> threads = new ArrayList<NoticeThread>();
			
			while(rs.next()) {
				threads.add(new NoticeThread()
										.setThread_no(rs.getInt("THREAD_NO"))
										.setEmail(rs.getString("EMAIL"))
										.setTitle(rs.getString("TITLE"))
										.setContent(rs.getString("CONTENT"))
										.setHit(rs.getInt("HIT")));
									
			}
			return threads;
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

	@Override
	public int insert(NoticeThread nthread) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlInsert = "INSERT INTO cinemadb.threadtbl("
								+ "EMAIL, TITLE, CONTENT) "
								+ "VALUES('?', '?', '?')";
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1,nthread.getEmail());
			stmt.setString(2, nthread.getTitle());
			stmt.setString(3, nthread.getContent());
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
	public int delete(int thread_no) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM threadtbl WHERE THREAD_NO=" + thread_no;
		
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

	@Override
	public NoticeThread selectOne(int thread_no) throws Exception {
		NoticeThread nthread = null;
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM reviewtbl WHERE REVIEW_NO=" + thread_no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				nthread = new NoticeThread()
									.setThread_no(rs.getInt("THREAD_NO"))
									.setEmail(rs.getString("EMAIL"))
									.setTitle(rs.getString("TITLE"))
									.setContent(rs.getString("CONTENT"))
									.setHit(rs.getInt("HIT"));
						
									
			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		}  finally {
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
		return nthread;
	}

	@Override
	public int update(NoticeThread ntherad) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE theradtbl SET TITLE=?, CONTENT=? WHERE THREAD_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1,ntherad.getTitle());
			stmt.setString(2,ntherad.getContent());
			stmt.setInt(3, ntherad.getThread_no());
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
}
