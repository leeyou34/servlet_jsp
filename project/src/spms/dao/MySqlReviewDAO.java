package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Review;

@Component("reviewDAO")
public class MySqlReviewDAO implements ReviewDAO {
	
	DataSource ds;
	
	  public void setDataSource(DataSource ds) {
	      this.ds = ds;
	   }

	@Override
	public List<Review> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM reviewtbl ORDER BY REVIEW_NO DESC";
		
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Review> reviews = new ArrayList<Review>();
			
			while(rs.next()) {
				reviews.add(new Review()
										.setReview_no(rs.getInt("REVIEW_NO"))
										.setEmail(rs.getString("EMAIL"))
										.setReview(rs.getString("REVIEW"))
										.setRating(rs.getDouble("RATING"))
										.setHit(rs.getInt("HIT"))
										.setReview_regdate(rs.getDate("REVIEW_REGDATE")));	
			}
			return reviews;
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
	public int insert(Review review) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlInsert = "INSERT INTO cinemadb.reviewtbl("
								+ "MOVIE_NO, EMAIL, REVIEW, RATING, HIT, REVIEW_REGDATE) "
								+ "VALUES('?', '?', '?', '?', 0, NOW())";
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setDouble(1, review.getRating());
			stmt.setString(1, review.getReview());
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
	public int delete(int review_no) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM reviewtbl WHERE REVIEW_NO=" + review_no;
		
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
	public Review selectOne(int review_no) throws Exception {
		Review review = null;
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		final String readSql = "UPDATE reviewtbl SET HIT=HIT+1 WHERE REVIEW_NO=" + review_no;
		final String sqlSelectOne = "SELECT * FROM reviewtbl WHERE REVIEW_NO=" + review_no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(readSql);
			rs = stmt.executeQuery(sqlSelectOne);
			
			if(rs.next()) {
				review =  new Review()
									.setReview_no(rs.getInt("REVIEW_NO"))
									.setEmail(rs.getString("EMAIL"))
									.setRating(rs.getDouble("RATING"))
									.setHit(rs.getInt("HIT"))
									.setReview_regdate(rs.getDate("REVIEW_REGDATE"));
									
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
		return review;
	}

	@Override
	public int update(Review review) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE reviewtbl SET REVIEW=?, RATING=? WHERE REVIEW_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, review.getReview());
			stmt.setDouble(2, review.getRating());
			stmt.setInt(3, review.getReview_no());
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
