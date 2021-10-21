package spms.dao;

import java.util.List;

import spms.vo.NoticeThread;


public interface ThreadDAO {
	public List<NoticeThread> selectList() throws Exception;
	public int insert(NoticeThread nthread) throws Exception;
	public int delete(int thread_no) throws Exception;
	public NoticeThread selectOne(int thread_no) throws Exception;
	public int update(NoticeThread nthread) throws Exception;
}	
