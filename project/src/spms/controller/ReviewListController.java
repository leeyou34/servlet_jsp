package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ReviewDAO;

@Component("/project/reviewlist.do")
public class ReviewListController implements Controller {
	ReviewDAO reviewDAO;
	
	public ReviewListController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("reviews", reviewDAO.selectList());
		return "/project/ReviewList.jsp";
	}

}
