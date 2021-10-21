<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>

<link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery-3.6.0.min.js"></script>
  <script src="../js/slick.min.js"></script>
  <link rel="stylesheet" href="../css/slick-theme.css">
  <link rel="stylesheet" href="../css/slick.css">
  <link rel="stylesheet" href='../http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <link rel="stylesheet" href="../css/movie.css">
  <script src="../js/movie.js" defer></script>
<link rel="stylesheet" href="../css/albery.css">
<script src="../js/albery.js"></script>
<link rel="stylesheet" href="../css/nav-fo.css">

</head>
<body>
	<!-- JSTL(JSP Standard Tag Library) : JSP 확장 라이브러리로 리스트나 배열 표출 시 자주 사용
										  JSP에서 기본적으로 제공해주지 않기 때문에 taglib 링크를 걸어서 사용
										  c:out : 출력문을 위한 태그
										  			c:out value="출력할 값"
										  c:if : 조건문을 위한 태그
										  		 c:if test="조건" var="변수명" scope="request|session|application"
										  c:choose : case-when 문법
										  			 c:choose
										  			 	c:when test="참/거짓"
										  			 	c:when test="참/거짓"
										  			 	....
										  c:foreach : 반복적인 작업을 위한 태그
										  			  c:foreach var="변수명" items="목록데이터" begin="시작인덱스" end="종료인덱스"-->
	<jsp:include page="/Header.jsp"/>
	<h1>회원 목록</h1>
	<p><a href="add.do">신규 회원</a></p>
	<!-- memberList라는 객체를 데이터 저장소에서 꺼냄
	     foreach문에서 memberList에 담겨있는 내용을 member라는 변수로 담아서 하나씩 사용하겠다 -->
	<c:forEach var="user" items="${userList }">
	${user.userNo },
	<a href="update.do?no=${user.userNo }">${user.name }</a>,
	${user.email },
	${user.createDate }
	<a href="delete.do?no=${user.userNo }">삭제</a><br>
	</c:forEach>
</body>
</html>