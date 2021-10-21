<%@ page import="spms.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//HttpSession 데이터 보관소에 저장된 member 객체 꺼내서 사용
	//Member member = (Member)session.getAttribute("Member");
%>
<div style="background-color:#00008b; color:#ffffff; height:20px; padding:5px">
SPMS(Simple Project Management System)
<c:if test="${!empty Member and !empty Member.email }">
<span style="float:right;">
	${Member.name }
	<a style="color:white;" href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>
</span>
</c:if>
</div>