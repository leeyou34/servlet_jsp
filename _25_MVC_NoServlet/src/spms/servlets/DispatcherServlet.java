package spms.servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.controller.Controller;
import spms.controller.LoginController;
import spms.controller.LogoutController;
import spms.controller.MemberAddController;
import spms.controller.MemberDeleteController;
import spms.controller.MemberListController;
import spms.controller.MemberUpdateController;
import spms.vo.Member;

/**
 * Servlet implementation class DispatcherServlet
 */
//모든 .do url 호출에 대한 처리를 프론트컨트롤러인 Dispatcher에서 처리
/*
 * 1) 의미 : tomcat으로부터 바로 제어 컨트롤러를 전송하는 방식
 * 			-> tomcat은 FrontController로 요청을 전송
 * 			   FrontController에서 각 PageController분기해서 처리하도록
 * 			   FrontController : DispatcherServlet
 * 			   BackController(PageController) : 각 페이지 별 서블릿
 * 
 * 2) 이유 : 공통된 중복코드를 한 곳에 모아서 관리하기 편하게 하기 위함 -> 프레임워크의 기초 개념
 *          FrontController만 HttpServlet을 상속받고
 *          PageController들은 일반 자바 클래스로 변환
 *          
 * 3) FrontController의 역할
 *    3-1) 요청에 따른 페이지별 분기 처리
 *    3-2) 페이지 컨트롤러로 전송할 VO 객체 생성
 *    3-3) 서블릿/JSP 페이지 이동 처리
 *    3-4) PageController에서 발생하는 모든 예외 처리
 *    3-5) 신규 페이지나 기존 페이지 관리
 *    
 * 4) 장점
 * 	  4-1) FrontController만 HttpServlet을 상속받기 때문에 다른 WAS로 이식할 때 FrontController만 수정하면 됨
 *    4-2) 브라우저에 노출하고 싶지 않은 페이지 감춤
 *    4-3) 공통역할을 FrontController에 모아놓기 때문에 자동화(Framework화)하기 편함
 * 
 * */
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		//분기 처리를 위한 servlet(요청url) 경로 얻음
		String servletPath = request.getServletPath();
		try {
			//서블릿 경로에 따른 페이지컨트롤러 경롤 담을 변수
			Controller pageController = null;
			ServletContext sc = this.getServletContext();
			HashMap<String, Object> model = new HashMap<String, Object>();
			model.put("memberDAO", sc.getAttribute("memberDAO"));
			model.put("session", request.getSession());
			
			if("/member/list.do".equals(servletPath)) {
				pageController = new MemberListController();
			} else if("/member/add.do".equals(servletPath)) {
				pageController = new MemberAddController();
				
				//새로운 입력값이 있으면 doPost로 없으면 doGet 처리
				if(request.getParameter("email") != null) {
					model.put("member", new Member()
												    .setEmail(request.getParameter("email"))
												    .setPassword(request.getParameter("password"))
												    .setName(request.getParameter("name")));
				}
			} else if("/member/update.do".equals(servletPath)) {
				pageController = new MemberUpdateController();
				
				//새로운 입력값이 있으면 doPost로 없으면 doGet 처리
				if(request.getParameter("email") != null) {
					model.put("member", new Member()
													.setNo(Integer.parseInt(request.getParameter("no")))
				   									.setEmail(request.getParameter("email"))
				   									.setName(request.getParameter("name")));
				} else {
					model.put("no", Integer.parseInt(request.getParameter("no")));
				}
			} else if("/member/delete.do".equals(servletPath)) {
				pageController = new MemberDeleteController();
				model.put("no", Integer.parseInt(request.getParameter("no")));
			} else if("/auth/login.do".equals(servletPath)) {
				pageController = new LoginController();
				if(request.getParameter("email") != null) {
					model.put("loginInfo", new Member()
													   .setEmail(request.getParameter("email"))
													   .setPassword(request.getParameter("password")));
				}
			} else if("/auth/logout.do".equals(servletPath)) {
				pageController = new LogoutController();
			}
			
			//POJO Page Controller
			String viewUrl = "";
			if(pageController != null) {
				viewUrl = pageController.execute(model);
				for(String key : model.keySet()) {
					request.setAttribute(key, model.get(key));
				}
			} else {
				System.out.println("주소 대상  Controller를 찾을 수 없습니다.");
			}
			
			//반환받은 값에 redirect가 포함되어 있으면 바로 페이지 이동
			if(viewUrl.startsWith("redirect:")) {
				response.sendRedirect(viewUrl.substring(9));
				return;
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(viewUrl);
				rd.include(request, response);
			}
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
			rd.forward(request, response);
		}
	}
}
