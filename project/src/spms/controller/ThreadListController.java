package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ThreadDAO;

@Component("/project/threadlist.do")
public class ThreadListController implements Controller {
	ThreadDAO threadDAO;
	
	public ThreadListController setReviewDAO(ThreadDAO threadDAO) {
		this.threadDAO = threadDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("threads", threadDAO.selectList());
		return "/project/ThreadList.jsp";
	}

}
